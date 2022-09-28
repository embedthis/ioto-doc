# Log File Exports

The Ioto agent can export O/S logs and files from the local device into AWS CloudWatch logs for secure cloud-side storage.

Ioto log capture offers two capabilities:

* Export and save the Ioto Log to CloudWatch
* Capture and export any device O/S log file to CloudWatch

## Enabling Cloud Logs

To enable exporting log files to the device cloud, set the **services.logs** property in the **config.json5** file to true.

```javascript
{
    services: {
        cloud: {
            keys: true,
            logs: true
        }
    }
}
```

To export logs, you must have the **keys** property set to true to enable generation of the IAM access keys that grant access to AWS CloudWatch.


## Exporting the Ioto Log

By default, the Ioto trace log is saved to /var/log/ioto.log.

To save this to the cloud, change the **trace.path** property in the **config.json5** file to be set to "cloud".

```javascript
    trace: {
        path: 'cloud'
        group: 'log-group-name',
        stream: 'log-stream-name',
    }
```

This will cause all messages sent to the Ioto log to be saved to the specified CloudWatch group and stream name. If the group and stream are unset, they default to: "Ioto" and "agent".


## Enabling O/S Log File Export

Ioto can monitor, capture and export any file to S3. Ioto will monitor the length of the file and if new data is written to the log, it will be efficiently captured and written to CloudWatch.

To configure log files for monitoring, define the log files in the **logs.files** property of the **config.json5** configuration file. For example:

```javascript
{
    logs: {
        files: [
            { path: '/var/log/sys*log', group: 'ioto', stream: '{hostname}' }
        ],
    }
}
```

The **files** property contains any number of log definitions. Each definition specifies the local filename and the destination CloudWatch group and stream name.

The file pathname may contain the wild cards "*" and "?". This is useful for log files that have a varying portion such as a date or version component in the name.

The **stream** property can use tokens such as "{hostname}" which is expanded at runtime with the local hostname of the device.
