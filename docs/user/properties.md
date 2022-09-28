# Configuration Properties

## limits

| Name | limits |
|-|-|
| Description | Define execution limits for Ioto. |
| Synopsis | `limits: { "key": "value", ... }` |
| Notes | The <b>limits</b> property collection defines various execution limits for Ioto.|

**Example**

```javascript
limits: {
    stack: '16K',
},
```


## limits.stack

| Name | limits.stack |
|-|-|
| Description | Define the stack size of fiber coroutines for Ioto. |
| Synopsis | `limits: { stack: "Number" }` |
| Notes | The <b>limits.stack</b> property specifies the stack size for Ioto coroutines. This should be set to the maximum anticipated stack size for your executing code. Supplied Ioto code requires a stack size of 12K minimum.<br> <br>It is recommended that you minimize your use of big stack buffer variables and your use of deep recursion both of which require much bigger fiber stacks. |

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
        provision: true,
        serialize: 'auto',
        shadow: true,
        sync: true,
    },
    database: true,
    mqtt: true,
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
