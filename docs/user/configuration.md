# Configuration

Ioto is controlled via several JSON/5 configuration files that are that are read at startup by Ioto.

The configuration files are:

| File | Description |
|-|-|
| auth.json5 | Authentication configuration for the web server. Includes defined roles, users and passwords.|
| config.json5 | Primary Ioto configuration file. Configures enabled services, logging and log file ingestion |
| provision.json5 | Device and cloud provisioning configuration. |
| shadow.json5 | Local copy of the AWS IoT shadow state. |
| [web.json5](../web/configuration.md) | Web server configuration file. |


## JSON/5

Ioto uses a human-readable JSON/5 for configuration. JSON/5 an extension of JSON that makes it easier to create, read and maintain configuration files in JSON.

JSON/5 adds the following JavaScript features to JSON.

* Object keys may be JavaScript identifiers without quotes.
* Objects or arrays may have a trailing comma.
* Strings may be single quoted.
* Strings may span multiple lines (single, double or back-tick quotes).
* Numbers may have a leading or trailing decimal point, can be hexadecimal, and may begin with a plus.
* Values may be regular expressions.
* Undefined is a valid value.
* Single and multiline comments are allowed and preserved.

```javascript
{
    // single-comment
    /*
        Multi-line comment
    */
    unquotedKey: 42,
    singleQuoteString: 'The "lazy brown fox" jumped...',
    multiLine: "Line one
        line two
    ",
    hex: 0x42,
    trailingComma: {
        one: 1,
        two: 2,
    },
}
```

Some Ioto configuration properties accept numeric values as human-readable string with unit suffixes. In this case, the value must be string. The **limits** and **timeouts** properties in the web.json5 file support the suffixes: unlimited, infinite, kb, k, mb, m, gb, g, byte, bytes, infinite, never, sec, secs, seconds, min, mins, minute, minutes, hr, hrs, hour, hours, day, days, week, weeks, month, months, year and years.

## config.json

The primary Ioto configuration file is called **config.json**.

Here is a sample config.json:

```javascript
{
    services: {
        cloud: {
            keys: true,
            logs: false,
            provision: true,
            serialize: 'auto',
            shadow: false,
            sync: true,
        },
        database: true,
        mqtt: true,
        url: true,
        web: false,
    },
    logs: {
        files: [
            {path: '/var/log/sys*log', group: 'ioto', stream: '{hostname}' }
        ],
    },
    limits: {
        stack: '16k',
    },
    trace: {
        path: 'aws',
        format: '%D %H %A[%P] %T %S %M',
        types: 'error,info',
        sources: 'all',
    }
}
```

The configuration file defines the following items:

* The **services** to enable.
* The **log** files to capture and send to CloudWatch logs.
* The Ioto execution **limits** that defines the default stack size
* The Ioto **trace** log configuration.

The configuration properties are defined in the [Configuration Properties](./properties.md).
