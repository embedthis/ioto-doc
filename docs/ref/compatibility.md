# Compatibility

Ioto APIs are evolving, and are thus subject to change between minor releases.

The Ioto documentation provides a [Stability Classification](stability.md) for each API group that reflects their stability with respect to forward changes.

<!--
<a id="r5"></a>
<h2>Migrating from Earlier Releases</h2>
<p>Ioto 4 to 7 are highly compatible. Code written for Ioto 4 to 6 should migrate easily to Ioto 7.
Ioto 4 introduced new build tools, and a garbage collector for memory allocation, so if you are migrating from Ioto 2 or 3, you will have to perform more significant changes to your application, handlers or filters. </p>
-->

## Migrating to from Appweb or GoAhead

The Ioto web server configuration and APIs are simpler and different to those in Appweb or GoAhead. Porting from Appweb or GoAhead is feasible, but not trivial.

### Web Server Action Routines

The Ioto web server action routines are very similar to those in GoAhead and Appweb. So action code written for GoAhead and Appweb and should map easily to Ioto. However, some of the web server utility routines to read and write data are different.

The Ioto portable runtime (R) was adapted from GoAhead 5 and Appweb 8 and so the string, list, hashing and buffering APIs are very similar.

## Standards

Ioto supports the following standards web standards:

* [HTTP/1.1](http://www.w3.org/Protocols/rfc2616/rfc2616.html)
* [File Upload](http://www.ietf.org/rfc/rfc1867.txt)
