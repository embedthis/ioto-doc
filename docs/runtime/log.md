# Logging Trace

The Ioto agent creates a log file using the runtime logging module.

The purpose of the error log is to record essential configuration and error conditions. Per-request log typically is sent to a separate log.

The default log file captures log messages issued throughout the various Ioto modules and writes them to the default log file. Log typically is enabled in both debug and release builds and may be controlled via the build compile define ME_R_LOGGING which is typically set to true.

Log messages should be a single text line to facilitate machine processing of log files.

## API Tour

To write an informational log message to the error log file.

```c
rlog("info", "my-module", "Log message: %s", "Hello World");
```

The Ioto runtime defines four convenience routines for logging:

```c
rdebug("my-module", "Status code at %d is %d", __LINE__, status);
rerror("my-module", "Bad error: %d", code);
rfatal("my-module", "Insufficient resources, cannot continue");
rinfo("my-module", "Connected to server");
rtrace("my-module", "Active user count %d", count);
```

The convenience routines wrap rlog() and supply the first argument which is the message type. You can create custom types just by using them with rlog(). These standard types are provided: debug, error, fatal, info and trace.

The debug type is for trace trace that should only be emitted in debug builds. The fatal type will cause Ioto to immediately exit. Trace is for more verbose messages that are not emitted by default in production builds but can be enabled at runtime.


### Changing Levels

To change which messages are emitted by Ioto, you can define the log filters via the Ioto command line and via the **rSetLog** API.

To change the default Ioto log trace settings, customize the **config.json** **trace** property:

```javascript
trace: {
    path: '/var/log/ioto.log',
    format: '%D %H %A[%P] %T %S %M',
    types: 'error,info',
    sources: 'all',
}
```

See the [Trace Configuration](../../user/properties/#trace) for details.

You can also change trace levels via the command line. This will override the **config.json** trace settings. See the [Ioto Trace Command Line](../../user/running/#logging-and-tracing) for information.

Via the API, you can override log settings:
```c
rSetLog("/tmp/newlog.out:all:all", "%D %H %A[%P] %T %S %M", 1);
```

This will direct log output to newlog.out for all types and all sources.

### Log Handlers

You can also override Ioto's log handling and define your own log handler routine that will be invoked to process log messages.

```c
rSetLogHandler(myLogHandler);
```

This routine will be invoked for all log messages with the type, source and message parameters.


## API Reference

The full API is specified here:

[Log API](../../ref/api/r/#rlog)
