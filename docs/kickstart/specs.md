# Kickstart Specs

Kickstart for Ioto is a VueJS application that includes the following components:

* Ioto HTTP web server &mdash; requires Ioto commercial license
* [VueJS](https://vuejs.org) client-side Javascript framework
* Cloud-based skin and theme for the Ioto Cloud Device Manager
* Documentation
* Samples
* Source code

## UI Components

* User management
* User login
* Property edit
* Alert notification
* Event log
* Dashboard
* Dynamic tables and graphs
* Paged Data Tables
* Navigation
* Search
* Help
* Granular access control per page

## Cloud Management

* Device schema to model data for storage in device and in the cloud
* Transparent replication of device data to the cloud
* Ioto Cloud Device Manager skin and UI theme
* White-label via customized app name and logo

## Security

* Best practices security configuration
* Transport Layer Security (TLS/SSL)
* Secure user login
* Password storage with Blowfish hashing and salting
* Granular access control per-page or per URI
* Sandboxed resource limits
* Defensive counter-measures for DOS attacks
* Access and access violation logging
* Content Security Policy to minimize cross-site scripting
* CrossOrigin sharing support
* Hidden frame hijack prevention
* Hardened against Crime, Breach, Beast and Lucky 13 exploits
* Executes with minimal privilege in Chroot jail
* Safe portable runtime to protect against memory leaks and buffer overflows
* Angel monitoring process

## Performance

* Highly responsive UI with sub-second page transitions.
* Excellent request throughput and scaling.
* Small memory footprint even under heavy load (~1.5MB including TLS, database and entire application).
* HTML, Javascript and stylesheets minified, compiled and compressed into a single file.
* Data interchange with server via optimized JSON requests and responses.

## Pre-integrated Components

* VueJS client-side Javascript library.
* Builds with the modern [Vite](https://vitejs.dev/) build tool.
* [Vuetify](https://vuetifyjs.com/en/) Material Design look and feel.
* Themeable SASS style sheets.

## Developer Support

* HTTP server and client libraries.
* Extensive C, Javascript APIs.
* Extensive debug and trace logging.
* Select and customize CSS themes.

## Documentation

* Full C API Documentation.
* Tutorials.

## Platform Support

* Linux
* Windows
* MAC OSX
* FreeBSD
* FreeRTOS

## Embedding Support

* Supports ARM, MIPS, X86/X86_64, PPC, SH, Sparc processors.
* Full cross-compilation support. Use Windows, Linux or Mac as build system.
* Fine-grained control for conditional build and compilation.
* Build statically or shared.

## Standards

* HTTP/1.1, and HTTP/2 RFC 2616.
