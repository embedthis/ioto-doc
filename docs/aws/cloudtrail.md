# Cloud Auditing

It is best practice to enable [AWS CloudTrail](https://aws.amazon.com/cloudtrail/) on your AWS device cloud account to track user and API changes and activity on your account.

From the AWS Bible:

>AWS CloudTrail is an AWS service that helps you enable operational and risk auditing, governance, and compliance of your AWS account. Actions taken by a user, role, or an AWS service are recorded as events in CloudTrail. Events include actions taken in the AWS Management Console, AWS Command Line Interface, and AWS SDKs and APIs.

Visibility into your AWS account activity is a key aspect of security and operational best practices. You can use CloudTrail to view, search, download, archive, analyze, and respond to account activity across your AWS infrastructure. You can identify who or what took which action, what resources were acted upon, when the event occurred, and other details to help you analyze and respond to activity in your AWS account. Optionally, you can enable AWS CloudTrail Insights on a trail to help you identify and respond to unusual activity.

Ioto will automatically enable CloudTrail when creating a device cloud.

## S3 Bucket Name

Ioto will enable CloudTrail to log to an S3 bucket named: **ioto-cloudtrail-logs-UUID**
