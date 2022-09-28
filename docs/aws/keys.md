# IAM Access Keys

Ioto can automatically generate and provision IAM access keys so you can interact with any AWS service from your device.

The IAM keys are temporary access keys that expire each hour. Ioto will automatically refresh these keys as required.

## Enabling IAM Keys

To enable generation of temporary IAM keys, set the `keys` property of the `services.cloud` property in the config.json5 configuration file to true.

```javascript
{
    services: {
        cloud: {
            keys: true
        }
    }
}
```

When the **keys** property is set to true, Ioto will retrieve from your device cloud a set of temporary IAM credentials that can be used to sign AWS API requests using the Ioto **aws** APIs or to use with the [AWS C API SDK](https://github.com/aws/aws-iot-device-sdk-embedded-C).

Ioto saves these keys for you in the Ioto agent structure:

```c
struct Agent {
    cchar *awsRegion;          /**< Default AWS region */
    cchar *awsAccess;          /**< AWS temp creds */
    cchar *awsSecret;          /**< AWS cred secret */
    cchar *awsToken;           /**< AWS cred token */
    Time awsExpires;           /**< AWS cred expiry */
}
```

These will be automatically refreshed 20 minutes before expiring, so you can rely on using these keys to be valid for 20 minutes.


## IAM Role

The generated keys are based on the Device Cloud IAM role in the device cloud. This defaults to the IAM role named: `IotoDeviceAccess`. However, you can change this using the [Builder Site](https://admin.embedthis.com) to any custom role you choose.

You should follow the principle of least privilege and ensure you scope all privileges granted to your devices are scoped to specific resources and only granting access to AWS APIs that are absolutely required.



## API Quick Tour

To force a regeneration of the IAM access keys, use **ioGetKey(0)**.

```c
ioGetKey(0);
```
