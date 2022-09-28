# Listening for Connections

Ioto can listen for HTTP requests on multiple IP addresses and ports. Incoming requests may be served by a single server, or they may be processed by different logical servers often called virtual hosts.

The process of opening TCP/IP ports to listen for requests is called binding. By default, Ioto will listen on all the interface network cards in the system, but the Ioto configuration file allows explicit control over which interfaces, IP addresses and ports are used.

## Listen Directive

The <a href="directives/listen.html">Listen</a> configuration file property specifies the IP endpoints on which Ioto will listen for incoming HTTP requests. It takes the form:

```json
listen: [
    [http:// | https://][IP][:PORT],
    ...
]
```

The HTTP scheme portion is optional and indicates whether TLS is to be use. If **https://** is used, then TLS will be applied to the connection.

The IP address and port components are optional, but at least one must be present. If the IP address is absent, Ioto will listen on all network interfaces including the loop-back adapter. If the PORT is absent, Ioto will listen on the default port which is typically configured to be port 80.

For example:

```json
listen: [
    "http://:80",
    "https://:443",
]
```

## IPv6

Ioto will listen on both IPv4 and IPv6 endpoints. To specify IPv6 endpoints you need to use IPv6
encoding. IPv6 addresses have eight colon separated segments. For example:

```
2001:0db8:85a3:08d3:1319:8a2e:0370:7348
```

Because IPv6 addresses contain a colon character, you need to enclose the IPv6 address in brackets if
you want to also specify a network port when using the Listen directive.

```json
listen: [
    "http://[2001:0db8:85a3:08d3:1319:8a2e:0370:7348]:7777"
]
```

These two documents are useful IPv6 references:
* [Understanding IPv6 Addresses](http://www.enterprisenetworkingplanet.com/netsp/article.php/3633211)
* [Wikipedia IPv6](http://en.wikipedia.org/wiki/IPv6)
