# Running Ioto

When Ioto is built and installed, it is configured to start automatically when the system boots.

However, you can run Ioto manually. During development, this is especially helpful as you can vary the level of debug trace output.

## Ioto Command Line

On Linux or Mac OS X, Ioto is installed by default in the directory /usr/local/lib/ioto. The Ioto program is installed at /usr/local/bin/ioto.

The Ioto command line is:

```bash
ioto [options]
```

## Ioto Command Options

Option | Description
-|-
--account Token | Manager account for self-claiming.
--background | Run Ioto in the background detached from the terminal.
--cloud Token | Cloud claim token for self-claiming
--debug | Emit very verbose debug tracing.
--exit event|minutes | Exit on event or after 'minutes'.
--home directory | Change to directory to run
--id Token | Device claim ID. Overrides device.json5.
--nolocal | Do not apply local.json5.
--nosave | Run in-memory and do not save state.
--product Token | Product claim ID. Overrides device.json5.
--profile profile | Select execution profile from config.json
--reset | Reset state to factory defaults.
--test Suite | Run test suite from config/test.json5.
--timeouts | Disable timeouts for debugging.
--trace file[:type:from] | Trace to file.
--verbose | Emit more verbose trace
--version | Output version information

## Configuration

When Ioto starts, it reads various Ioto configuration files from the Ioto installation directory. See [Configuration Files](../configuration) for details.

## Logging and Tracing

Ioto provides detailed tracing regarding client accesses and the operation of Ioto.

The Ioto tracing is configured via the **trace** property in the **config.json** file. It can also be specified via the **--trace** command line option when invoking ioto, or via the **--verbose** or **--debug--** options.

### Configuration

Tracing can be directed toward a trace file or toward AWS CloudWatch logs.

The **trace** property in config.json specifies the destination via the **path** property. This property can be set to stdout, stderr, any trace filename or "cloud".

```javascript
trace: {
    path: 'ioto.log',
    format: '%D %H %A[%P] %T %S %M',
    types: 'error,info',
    sources: 'all',
},
```

The **format** property specifies a format for trace messages. It contains printf style tokens that are expanded at runtime. The supported tokens are: 'A' for the application name, 'D' for the local datetime, 'H' for the system hostname, 'M' for the trace message, 'P' for the process ID , 'S' for the message source, and 'T' for the trace message type.

Ioto classifies trace messages according to types. The supported types are: debug, error, fatal, info, and trace. The **types** property specifies a comma separate list of trace message types to emit.

Log messages are emitted from "sources". These are the names of the code module that originate the trace messages. The **sources** property is a comma separated list of sources. Some of the Ioto trace message sources are: "runtime", "tls", "mbedtls", "json", "url" and "web".

You can use "all" for types and sources to match all types/sources. You can also use "!type" and "!source" to negate a type or source.

### Command Line

You can override the tracing configuration when invoking Ioto via the **--trace** command line option.

This option specifies the trace file destination and a list of types and sources.

    ioto --trace file[:types:sources]

The --trace option syntax is **fileName[:types:sources]**. The types are a comma separated list of message types. Valid types include: info, debug, error, trace and all. Sources are the code module names originating the trace messages. You can use "!type" and "!source" to negate a type or source.


## Ioto Manual Pages

This Ioto distribution provides manual pages that can be viewed (on Unix-like systems) using the systems **man** command. Text copies of the pages are included below:

| Topic | Description |
|-|-|
| [ioto](../man/ioto.html) | Ioto device agent. |
| [pass](../man/pass.html) | Password manager. |
