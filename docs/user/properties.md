# Configuration Properties

These are the configuration properties for the primary **config/config.json** configuration file.

See the following descriptions for other configuration files:


| File | Description |
|-|-|
| [device.json5](../device-properties/) | Device configuration file. |
| [schema.json5](../../database/schemas/overview/) | Database data schema. |
| [web.json5](../web/configuration.md) | Web server configuration file. |

## api

| Name | api |
|-|-|
| Description | Collection of API endpoint URLs. |
| Synopsis | `api: { "builder": "value", serialize: "value" }` |
| Notes | The <b>api</b> property collection defines various API endpoints. The api.builder endpoint is for the Builder public API. The api.serialize endpoint is for your local device serialization service employed during device manufacture.|

**Example**

```javascript
api: {
    builder: 'https://api.admin.embedthis.com/api',
    serialize: 'http://localhost:4100/ioto/serialize',
}
```

## certs

| Name | certs |
|-|-|
| Description | Ioto Certificates. |
| Synopsis | `certs: { aws: 'path', url: 'path' }` |
| Notes | The <b>certs.aws</b> property defines a filename for the AWS root certificate bundle. The <b>certs.url</b> property defines a root certificate bundle that is used to verify domains used by the URL client.<br><br>Ioto includes default certificates for the AWS root and URL root certificates.|

**Example**

```javascript
certs: {
    aws: 'certs/aws.crt',
    url: 'certs/roots.crt',
}
```


## database

| Name | database |
|-|-|
| Description | Control the Ioto database. |
| Synopsis | `database: { properties... }` |
| Notes | The <b>database</b> property collection defines the database, schema and operational parameters that govern the Ioto database.The <b>path</b> property defines the filename of the on-disk database store. Ioto will also create a database journal log file that appends a ".jnl" extension to this path.<br><br>The <b>schema</b> property defines the database scheme that defines the database indexes, entities and data types.<br><br>The <b>maxJournalSize</b> defines how big the database journal log should grow before Ioto rewrites the database. The <b>maxJournalAge</b> defines how long data should be preserved in the journal log before the database file is updated. These values should be sufficiently log as writing updated data to the journal is much more efficient that updating the database file.<br><br> The <b>maxSyncAge</b> property defines how long changed database data should be buffered before synchronizing to the cloud. The <b>maxSyncSize</b> property defined how much data should be buffered before synchronizing to the cloud.|

**Example**

```javascript
database: {
    path: 'state/state.db',
    schema: 'config/schema.json5',
    maxJournalSize: '1mb',
    maxJournalAge: '1min',
    maxSyncAge: '5secs',
    maxSyncSize: '10k',
},
```


## directories

| Name | directories |
|-|-|
| Description | Define default Ioto directories. |
| Synopsis | `directories: { "log": ".", state: "./state" }` |
| Notes | The <b>directories</b> property collection defines various directories used by Ioto. The directories.log directory is where log files will be saved. The directories.state directory is where runtime state including databases, provisioning information and shadow state will be stored.|

**Example**

```javascript
directories: {
    log: '/var/log',
    state: 'state',
}
```

## limits

| Name | limits |
|-|-|
| Description | Define execution limits for Ioto. |
| Synopsis | `limits: { "key": "value", ... }` |
| Notes | The <b>limits</b> property collection defines various execution limits for Ioto. The limits.reconnect property defines the delay after MQTT communications are lost before the agent will reconnect. This is useful to throttle network load in the event of a network disconnection. The limits.stack property defines the default size of fiber coroutine stacks. |

**Example**

```javascript
limits: {
    reconnect: '10secs',
    stack: '16K',
}
```


## limits.stack

| Name | limits.stack |
|-|-|
| Description | Define the stack size of fiber coroutines for Ioto. |
| Synopsis | `limits: { stack: "Number" }` |
| Notes | The <b>limits.stack</b> property specifies the stack size for Ioto coroutines. This should be set to the maximum anticipated stack size for your executing code. The default stack size is 64K. The core Ioto code requires a stack size of 12K.<br> <br>It is recommended that you minimize your use of big stack buffer variables and your use of deep recursion both of which require much bigger fiber stacks. |

**Example**

```javascript
limits: {
    stack: '16K',
},
```


## logs

| Name | logs |
|-|-|
| Description | Define the list of log files to ingest and send to CloudWatch logs. |
| Synopsis | `logs: { path: "filename", group: "log-group', stream: "log-stream" }` |
| Notes | The <b>files</b> property contains one or more file definitions to ingest and send to CloudWatch logs. The definitions define the log file name, AWS CloudWatch log group and stream names.<br> <br>The <b>path</b> property may contain wild cards and all matching files will be ingested.<br> <br>The <b>group</b> property specifies the AWS log group name which must exist.<br> <br>The <b>stream</b> property specifies the AWS log stream name which must exist.<br> <br>The group and stream properties may contain tokens that are expanded before use. The supported tokens are: "{hostname}" which translates to the system hostname, "{instance}" which expands to the AWS EC2 instance name and "{deviceId}" which expands to the provisioned provision.deviceId property. |
**Example**

```javascript
logs: {
    files: [ {
        path: '/var/log/sys*log',
        group: 'ioto',
        stream: '{hostname}'
    } ],
}
```

## mqtt

| Name | mqtt |
|-|-|
| Description | MQTT configuration. |
| Synopsis | `mqtt: { properties }"` |
| Notes | The <b>mqtt</b> property collection is used to configure MQTT communications to the cloud. The mqtt.cert and mqtt.key properties define filenames to the X.509 certificate and key used to secure MQTT communications. <br><br> The mqtt.client defines the MQTT client ID used to uniquely identify the device. <br><br>The alpn property defines the HTTPS ALPN identification string required when using HTTP port 443 for communications. The mqtt.ca property defines the authority certificate from AWS that is used as the root certificate to verify the MQTT broker endpoint. <br><br>The cert, key, client and endpoint properties can be set to "auto" to have their values dynamically configured from AWS IoT core at runtime. |

**Example**
```javascript
mqtt: {
    cert: 'auto',
    key: 'auto',
    client: 'auto',
    endpoint: 'auto',
    port: 443,
    alpn: 'x-amzn-mqtt-ca',
    ca: 'certs/aws.crt',
}
```

## profile

| Name | profile |
|-|-|
| Description | Configuration profile to select. |
| Synopsis | `profile: "dev | qa | prod | ..."` |
| Notes | The <b>profile</b> property is used to select different configurations for Ioto at runtime. For example, it can select a "dev" profile for development and a "prod" profile for productions.<br> <br>The <b>profile</b> property selects a set of configuration properties from the **profiles**. These are copied to the top level and overwrite any existing top-level properties. |

**Example**
```javascript
profile: "prod"
```

## profiles

| Name | profiles |
|-|-|
| Description | Configuration profiles and their configuration. |
| Synopsis | `profiles: { "Profile-Name": { /* properties */ }` |
| Notes | The <b>profile</b> property is used to select different configurations for Ioto at runtime. For example, it can select a "dev" profile for development and a "prod" profile for productions.<br> <br>The <b>profile</b> property selects a set of configuration properties from the **profiles**. These are copied to the top level and overwrite any existing top-level properties. |

**Example**
```javascript
profiles: {
    prod: {
        ingest: {
            files: [
                {path: '/var/log/sys*log', group: 'ioto', stream: '{hostname}' }
            ]
        }
    },
    dev: {
        ingest: {
            files: [],
        }
    }
}
```

## scripts

| Name | scripts |
|-|-|
| Description | Set of scripts used for various management tasks.|
| Synopsis | `scripts: { update: './scripts/update'}` |
| Notes | The <b>scripts.update</b> property defines a script that is invoked to apply software updates. The script is invoked with the pathname to the update image as the first and only argument.|

```javascript
scripts: {
    update: './scripts/update'
}
```

## services

| Name | services |
|-|-|
| Description | Configure which Ioto services to enable at runtime.|
| Synopsis | `services: { 'Service-Name': true | false, ... }` |
| Notes | The <b>services</b> property collection defines which Ioto services to enable.<br><br>Some services are nested under the <b>cloud</b> property. The supported services are: <ul><li>cloud &mdash; AWS Cloud Services</li> <li>keys &mdash; Generate and rotate IAM access credentials</li> <li>logs &mdash; Send local O/S log files to CloudWatch logs</li> <li>provision &mdash; Enable registration and provisioning of device in the cloud</li> <li>serialize &mdash; Invoke manufacturing serialization service at first boot during test.</li> <li>mqtt &mdash; MQTT services</li> <li>shadow &mdash; AWS IoT device shadows</li> <li>sync &mdash; Send device state to AWS database</li> <li>web &mdash; Local web server</li> </ul><br>Some services depend on others. Lower-level services will be forcibly enabled if upper level services require them. |


**Example**

```javascript
services: {
    cloud: {
        keys: true,
        logs: true,
        mqtt: true,
        provision: true,
        serialize: 'auto',
        shadow: true,
        sync: true,
    },
    database: true,
    url: true,
    web: true
}
```

## trace

| Name | trace |
|-|-|
| Description | Control the Ioto log trace file. |
| Synopsis | `trace: { path: 'path', format: 'format', types: 'types', sources: 'sources' }` |
| Notes | The <b>trace</b> property collection defines how and where Ioto traces execution information.<br><br>The <b>trace.path</b> property specifies the destination of the Ioto trace log. Set it to "stdout" or "stderr", "aws" or a filename. If set to "aws", then the <b>trace.group</b> property specifies the AWS log group name and the <b>trace.stream</b> property specifies the AWS log stream name.<br><br>The <b>format</b> specifies a leading format for the message that contains printf style tokens that are expanded at runtime. The supported tokens are: 'A' for the application name, 'D' for the local datetime, 'H' for the system hostname, 'M' for the message, 'P' for the process ID , 'S' for the message source, and 'T' for the message type.<br><br>The <b>types</b> property specifies the types of messages to emit. It may contain the following types: debug, error, info and trace. It may be set to "all" for all types.<br><br> The <b>sources</b> property specifies a comma separated list of message sources to emit. Sources may be prefixed with "!" to subtract from the list. For example: "all,!mbedtls" will emit messages from all sources except "mbedtls".|

**Example**

```javascript
trace: {
    path: '/var/log/ioto.log',
    format: '%D %H %A[%P] %T %S %M',
    types: 'error,info',
    sources: 'all'
}
```

## version

| Name | Version |
|-|-|
| Description | Set the agent version. |
| Synopsis | `version: "SemVer Version String"` |
| Notes | The version string defines the versions of the embedded agent including your software. It is used when selecting software upgrades deployed from the Builder. Don't confuse this with the underlying Ioto version. The version string must conform to the [Semantic Versioning 2.0](https://semver.org/) spec.
