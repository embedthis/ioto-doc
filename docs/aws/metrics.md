# CloudWatch Metrics

AWS CloudWatch is a monitoring and management service that provides data and actionable insights to monitor devices and get a unified view of operational health.

The Ioto agent provides an easy way to generate custom metrics for capture by AWS CloudWatch so you can track critical device performance and information.

## API Tour

```c
rmetrics("Fan Temperature", "Acme/Rocket", "Fan", "Temp", "int", 101, "Fan", "string", "fan-0", NULL);
```

This would emit the metric "fan-0" temperature is 101 degrees. After this call, CloudWatch or the EmbedThis builder UI can display the fan temperature graph over time.

### The rmetrics API

The arguments of the rmetrics API are:

```c
PUBLIC void rmetrics(cchar *message, cchar *namespace, cchar *dimensions, cchar *values, ...);
```

The **message** is any identifying message you like to emit. The **namespace** is the CloudWatch custom namespace name for your metrics.

The metric values are expressed as triples comprised of: Name, Type and Value.

The **name** is the metric name. The type can be "int", "int64", "boolean" or "string".

You can write multiple metrics with one call by repeating supplying multiple value triples.

The **dimensions** are vectors that qualify the metric. CloudWatch treats each unique combination of dimensions as a separate metric. Enter the dimensions as a comma separated list of dimensions. For example:

dimensions = "Process,Module"

The values of the dimensions must be added to your value triplets.

```c
rmetrics("Fan Temperature", "Acme/Rocket",
    "InFlowTemp", "int", 101,
    "OutFlowTemp", "int", 143,
    "Process", "int", 42,
    "Module", "string", "input",
    NULL);
```
}
