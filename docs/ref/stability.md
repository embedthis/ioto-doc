# API Stability Classification

The programming interfaces and data structures are classified with a stability class. These classifications help developers understand which interfaces may change in future releases and may need to be wrapped within their applications.

When the classification is applied to an API, it applies to the complete function signature. When applied to a data structure or typedef, it applies to the structure name and not the internal structure fields. All structure fields are regarded as internal unless explicitly stated otherwise.

The version numbering for Embedthis products follows the [SemVer](https://semver.org/) scheme. For example 2.1.3 is major version 2, minor version 1 and patch version 3.

| Classification | Description |
|-|-|
| Mature | Must be interoperable across at least two consecutive major releases so that applications are not required to change. These APIs must be deprecated before change or removal. |
| Stable | Will not change between minor releases (e.g. 2.0 to 2.1). May change between major releases. |
| Evolving | May change between major or minor releases. May not change between patch releases (e.g. 2.0.0 to 2.0.1) release. |
| Prototype | May change between any major, minor or patch releases. |
| Deprecated | For use by legacy applications only. Customers are advised that these interfaces may be removed in the next major or minor release. |
| Internal | Internal API or data structure and may change at any time. Customers are strongly advised not to use these APIs. Please notify Embedthis if you feel compelled to use an internal API and we'll consider providing a better public interface that can be supported. |
