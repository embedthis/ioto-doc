
![Ioto](images/ioto-tm.png)

# Embedthis Ioto&trade;

Embedthis Ioto is an embedded agent for locally or remotely managing devices. It is tiny, but blazing **fast** and has an extensive suite of management protocols and capabilities.

Ioto includes a HTTP web server, AWS IoT cloud integration, embedded database, MQTT client, HTTP client, JSON parsing, easy provisioning and OTA upgrading.

Ioto can be used for local management via its embedded web server or it can be integrated with the cloud via comprehensive AWS IoT integration.

## Cloud Ready

Ioto is cloud ready and provides provides data synchronization with AWS IoT core, rules, and shadows and transparently replicates structured device data into AWS DynamoDB. It also captures logs into CloudWatch Logs, integrates with CloudWatch Metrics, and offers file and data upload to AWS S3.

## Modular and Configurable

If you only want an embedded web server, Ioto is easily configured to enable just the modules you need. You can configure Ioto to include ont the web server, or just the MQTT client, or you can enable full cloud management integration.

## Highly Optimized

Ioto is optimized for embedded device management via an evolved, high performance management runtime that delivers exceptional throughput and effective memory utilization. Ioto eliminates the ugliness of event callbacks and the complexity of threads by using fiber coroutines. Ioto is compact and is especially effective in reducing per-request CPU and memory overhead.

Ioto has a tiny memory footprint of only 150K of code. It is ideal for Linux and FreeRTOS systems and is easily ported to other platforms.

## Deployed Widely

Ioto draws from our code base at Embedthis, where we have experience in providing the most widely deployed embedded web servers. Our software has been deployed in networking equipment, telephones, mobile devices, and consumer and office equipment worldwide in many hundreds of millions of devices.

## Components

Ioto provides the following components:

* HTTP/1.1 server with dynamic rendering, authentication, cookies, sessions and file upload
* HTTP/1.1 client
* MQTT/3.1.1 client
* Embedded database
* JSON/5 parser and query engine
* Transport Layer Security (TLS/SSL) with ALPN support
* AWS IoT Integration with IoT Core, Shadows, Events and Rules
* AWS service integration with S3, Lambda, Kinesis and CloudWatch
* Transparent Database synchronization to AWS DynamoDB (like Global Tables)
* Safe, secure runtime core
* Easy provisioning
* OTA upgrading
* User authentication
* Complete documentation
* Extensive Samples
* Full Source code

## Want More?

To learn more about Ioto, please read:

* [Ioto Developer Background](user/background.md)
* [Ioto Use Cases](start/uses.md)
* [Ioto Web Site](https://www.embedthis.com/ioto/)
* [Ioto Download](https://admin.embedthis.com)
* [Embedthis Web Site](https://www.embedthis.com)
