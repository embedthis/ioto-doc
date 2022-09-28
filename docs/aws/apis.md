# Calling AWS APIs

Ioto provides a convenience wrapper to make invoking AWS APIs using REST easier.

Without this wrapper, invoking AWS APIs requires using either the bulky AWS C SDK or manually using the AWS SigV4 REST API which is tedious at best.

The Ioto AWS API wrapper uses the SigV4 API but performs the SigV4 signing for you.

## Requirements

To use the AWS SigV4 API, you need to have AWS IAM access keys enabled in the device. See the section on [AWS IAM Access Keys](./keys/) for details.


## API Quick Tour

To issue an AWS REST API, use the *aws* API:

```c
Url *up = urlAlloc();
int status = aws(up, "us-east-1", "logs", "Logs_20140328.PutLogEvents", data, dataLen, NULL);
```

This will issue a request to the specified AWS service (logs) in a region (us-east-1) and invoke the targeted service (Logs_20140328.PutLogEvents). This call will upload log data to CloudWatch logs.

Under the hood, the *aws* API is calling *awsSign* and *urlFetch*.

```c
char *signedHeaders = awsSign(region, service, target, "POST", "", NULL, body, bodyLen, headers);
char *url = sfmt("https://%s.%s.amazonaws.com/", service, region);
int status = urlFetch(up, "POST", url, body, bodyLen, signedHeaders);
```

The *awsSign* API will perform the required cryptographic signing of a request to be received by AWS.
