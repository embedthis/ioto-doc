# Configuring TLS

Ioto supports the TLS / SSL protocol for authenticating systems and encrypting data. Use of this protocol enables secure data transmission to and from clients in a standards-based manner.

This document provides step-by-step instructions for configuring TLS in the Ioto web server. If you are unfamiliar with TLS, please read the **[TLS Overview](./tlsOverview.md)** first.

## TLS Quick Start

The default source build of Ioto will support TLS for use by the Ioto web server. You can immediately test TLS access to documents by using the <b>https://</b> scheme. For example, to access the home page using TLS, use this URL in your browser:

    https://localhost/

<a name="tlsProviders"></a>
## TLS Providers

Ioto employs an open architecture TLS Provider interface so that customers can select or create an TLS provider for their needs.

Ioto provides multiple TLS implementations:

* MbedTLS -- designed for embedded use. This is the default TLS stack and is pre-integrated with Ioto. It is configured and enabled by default.
* OpenSSL -- designed for enterprise use. See <a href="http://www.openssl.org">http://www.openssl.org</a>.

The default source build will use the MbedTLS provider by default. See the README.md file for details about how to build with OpenSSL..

<a id="sslConfigurationDirectives"></a>
## SSL Configuration Directives

Ioto uses several configuration [TLS properties](./properties.md#tls) to control TLS and manage secure access to the web server.

The relevant TLS properties are:

* [tls.certificate](./properties.md#certificate)
* [tls.key](./properties.md#key)

There are some additional properties that are necessary should you wish to have Ioto verify client
certificates. These :

* [tls.authority](./properties.md#tls.authority)
* [tls.verify.*](./properties.md#tls.verify)

<a id="sslConfigurationExample"></a>

## TLS Configuration Example

Consider the default Ioto TLS configuration in the web.json5 configuration file:</p>

```javascript
web: {
    listen: [ "https://:443" ]
},
redirect: [
    { status: 302, to: "https://" },
},
tls: {
    certificate: "server.crt",
    key: "server.key",
    verify: {
        issuer: true
    }
}
```

This set of properties enables TLS on port 443 for all network interfaces and uses the default supplied self-signed certificate to identify the server.

The **listen** property instructs Ioto to process requests from all interfaces on port 443 using TLS.

The **certificate** property specifies the server certificate to use and the **key** property specifies the server private key for signing.

<b>SECURITY WARNING</b>: You must obtain or generate a SSL certificate before using this example in a production environment.

The server key file is a PEM encoded private key. You may supply either an encrypted private key or a
decrypted private key. If you use an encrypted private key, the server will prompt you for a pass-phrase to
decrypt the key when the server boots.

## Self-Signed Certificate

Ioto is shipped with a self-signed certificate to identify the web server.

<b>SECURITY WARNING</b>: This certificate is suitable for testing purposes only and your browser will issue a warning when you access the server. For production use, you should obtain your own service certificate from signing authorities such as <a href="http://www.verisign.com">Verisign</a>.

<a id="generatingKeys"></a>

## Generating Keys and Certificates

To generate a request file that you can send to a certificate issuing authority such as <a href= "http://www.verisign.com">Verisign</a>, use the following openssl command or equivalent command from your TLS provider:

```bash
openssl genrsa -des3 -out server.key 1024
openssl req -new -key server.key -out server.csr
```

This will generate a server key in the file "server.key" and will generate a certificate request in the file "server.csr" that you can send to the issuing authority. The issuing authority will generate a server certificate for your server and they will sign it with their private key. Subsequently, clients will be able to use the signing authorities public key to decrypt your server certificate and thus verify the identity of your server when negotiating a SSL session. When running these commands, you will be prompted to enter a pass-phrase password to decrypt the server private key. REMEMBER this password.

<b>SECURITY WARNING</b>: Safeguard the "server.key" private key jealously. If this falls into malicious
hands, then your server identity may be hijacked by another site.
