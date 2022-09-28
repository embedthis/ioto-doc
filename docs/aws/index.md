# AWS Integration Guide

The Ioto agent is pre-integrated with a suite of AWS services to make the job of creating IoT enabled devices dramatically easier.

All these integrations are optional and can be enabled or disabled via the *config.json5* configuration file.

## Features

* Simply provision devices for management by AWS IoT
* Replicate and synchronize structured data to AWS DynamoDB.
* Generate IAM temporary access credentials to call AWS API services on the device.
* Use the compact AWS SigV4 REST APIs from the device.
* Send messages to AWS IoT and other services via MQTT.
* Upload data and files to AWS S3.
* Send control-plane data to AWS IoT Shadows.
* Store the Ioto log file in AWS CloudWatch.
* Capture device O/S logs and upload to AWS CloudWatch.
* Emit metrics to AWS CloudWatch metrics.
* Save an audit trail to AWS CloudTrail.
