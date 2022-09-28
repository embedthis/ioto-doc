# Ioto Agent Reference Guide

This guide describes the Ioto agent programming APIs.

Before reading the APIs, you may wish to review some architectural overviews that explain the programming paradigms used by Ioto.

## Architectural Overviews

* [Ioto Background](../user/background.md)
* [Memory Allocation](../dev/memory.md)
* [Fiber Coroutine Programming](../dev/fiber.md)

## Programming APIs

The Ioto agent native APIs consist of C language headers, function prototypes, structure definitions and defines. They are divided into one of these areas.

| Area | Description |
|-|-|
| [Ioto](api/ioto.md) | Agent API |
| [Web Server](api/web.md) | Embedded Web Server |
| [DB](api/db.md) | Embedded Database |
| [MQTT](api/mqtt.md) | MQTT protocol client |
| [URL](api/url.md) | Http Client |
| [JSON](api/json.md) | JSON parser and query engine |
| [Crypt](api/crypt.md) | Crypto APIs |
| [R](api/r.md) | Portable Runtime |
| [OSDEP](api/osdep.md) | O/S Portability Layer |

## Stability Classifications

In addition to supporting <a href="https://semver.org/">SemVer</a> for Ioto version policy, we provide stability classifications.

APIs stability classifications document the likelihood of future change on a per-API basis. Rather than a general, meaningless backwards compatibility promise, these [Stability Classifications](stability.md) assist developers to understand the future risk of change.
