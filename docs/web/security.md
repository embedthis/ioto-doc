# Security Considerations

Securing applications that are accessible to the Internet is not a trivial task.

When a device enables an embedded web server, the security exposure increases significantly as it is listening for unsolicited incoming connections and requests.

>You should disable the Ioto web server unless you definitely need to provide HTTP web services.

This page outlines some of the issues, and offers best-practices and tips to help you secure your application using the Ioto web server.

## Updates

Even the best or most secure application server can experience some security vulnerabilities that are discovered after being deployed in the field. It is highly recommended that you stay up to date with the latest version of Ioto. [Download Ioto](https://www.embedthis.com/ioto/download.html).

<a href="https://embedthis.com/">Embedthis</a> provides security protection as part of the Ioto commercial license that will proactively notify you of any security flaws and will expedite fixes or workarounds to minimize any vulnerabilities.

## Sandboxing

Sandboxing is the term applied to running the Ioto web server in a confined environment. For device management, the profile of client access is typically well known, and the profile of malicious attacks are well outside this profile. The profile includes the rate of accesses, the type and size of requests.

The Ioto web server has a set of configuration file properties that allow you to define a sandbox which specifies how Ioto must be used for a request to be serviced. By using a well defined sandbox, you can minimize the chance that your application will be compromised by malicious requests. You should customize the sandbox limits to use minimum values and thus provide the most protection.

### Security Limits and Timeouts

The Ioto security limits can be used to effectively block some denial of service attacks. Limits should be set as low as possible while still permitting all valid requests and workloads.

Setting the LimitRequestsPerClient to a low value can restrict the ability of a malicious client to monopolize the server. One attack method for denial of service attacks is to initiate requests, but not conclude the request headers. The server is then forced to wait for the client to complete the request before it can act. However, setting the RequestParseTimeout directive to a low value will abort such requests and prevent such attacks.

Ioto can monitor sandbox limits and trigger defensive responses if access is outside defined norms. See the <a href="#dos">Denial of Service</a> section for more details.

## Sandbox Limits

The additional sandbox [limit](./properties.md#limits) properties are:

| Limit | Description |
|-|-|
| limits.body | Maximum size of the incoming request body for POST and PUT requests. Does not include file upload size. |
| limits.form | Maximum size of request form data (POST request using URL form encoding). |
| limits.header | Maximum size of the request headers |
| limits.upload | Maximum size of a file upload request |

## Timeout Properties

The important Ioto security [timeout](./properties.md#timeouts) properties are:

| Timeout | Description |
|-|-|
| timeouts.inactivity | Maximum request and connection inactivity duration. This can be defined per route, so if you have a long running request, create a dedicated route for that request. |
| timeouts.parse | Maximum duration to parse the request headers. This should be set very short. Typically a browser will send all the request headers in one network packet. Recommended value is 5 secs. |
| timeouts.request | Maximum request duration. Set this to the maximum time a request can take. This can be defined per route, so if you have a long running request, create a dedicated route and RequestTimeout for it. |

See the [Limit Properties](./properties.md#limits) and [Timeout Properties](./properties.md#timeouts) documentation for further details.

## Ioto User Account

It is important that you run Ioto with the lowest system privilege that will get the job done. If any application is compromised, including Ioto, then the system will be safest if the compromised application has as few privileges as possible.

## Unix Account

On Unix, create a dedicated user account and group for Ioto.

## Windows Account

It is suggested that you create a dedicated account for Ioto to minimize the privileges available should Ioto be compromised.

When creating an account for Ioto, ensure you do the following:

* Using the Group Policy manager, grant the account the privilege of "Act as part of the operating
system" and "Log on as a service".
* Ensure the account is a member of the "Users" group.
* Give the account read and execute rights to all HTML documents.
* Give the account read, write, execute and delete rights to the logs directory.
* Give the account read and execute rights to the ioto.exe.

## Directory and File Permissions

When Ioto is installed, it is configured for maximum security. This section explains the policy should you need to move or modify files and directories.

To enhance security you need to consider the directory and file permissions for three classes of content:

* Pages served by the HTTP server
* Scripts run by the HTTP server
* Configuration and log files used by the HTTP server.

Pages served by the Ioto server should be owned by root or administrator and should be only readable by the Ioto user account. Directories containing served pages should be readable and executable only.

Scripts run by the Ioto server should always be outside all directories containing served pages. After all, you don't want prying eyes viewing your scripts! Scripts should be owned by the <b>root</b> or <b>administrator</b> and should only be readable and executable by the Ioto user account.

Configuration and log files used by the Ioto server should always be outside all directories containing served pages or scripts. The directory containing the log files must be writable by the Ioto user account.

## Home Directory Permissions

The root directory for Ioto is called the Home directory and is defined by the Home directive in the configuration file. The Home directory, and the logs and lib directory below it, should be owned by <b>root</b> (or admin), and should be in the group <b>root</b> (or administrators). They should only be writable by this specific user and group.

For Linux, these commands will ensure the privileges are correctly set up:

```bash
cd    /etc/ioto
chown root .
chgrp root .
chmod 755  .
cd    /var/www/ioto
chown root .
chgrp root .
chmod 755  .
```

## Chroot Jail

One of the best forms of isolation for the server is to run inside a <a href="http://en.wikipedia.org/wiki/Chroot">chroot</a> jail. A chroot jail is when an application changes its root directory to be isolated from the real file system root directory. Any access then to files outside the jail is protected and impossible. Ioto supports chroot jails via the **chroot** command.

## Securing TLS

It is important to select a sufficiently long key length and strong cipher to protect TLS communications. It is recommended to use the AES cipher and avoid the older RC4 cipher suite. See the section below regarding <a href="#threats">Common Security Threats</a> for threats against the RC4 ciphers.

## TLS Forms

A common practice is to use HTTP for regular communications and to post login forms using TLS. However, this approach is flawed. The web form itself must be served using TLS as well as the URL receiving the login information. This prevents attackers injecting code into the form and hijacking login credentials.

For more information regarding TLS, please read:

* <a href="tlsOverview.html">TLS Overview</a>
* <a href="tls.html">Configuring TLS</a>

## Authentication

It is important to adequately secure all passwords stored at the server. Simply hashing the passwords with MD5 is insufficient as MD5 and other "fast" hashing techniques can be quickly compromised by dedicated password cracking and hashing tools.

Ioto includes the SHA256 and Blowfish/Bcrypt ciphers as an alternative that are more secure than MD5. The <a href="http://en.wikipedia.org/wiki/Blowfish_(cipher)">Blowfish</a> cipher is especially well suited for password hashing partly. Partly because it is slow, it does not easily succumb to brute-force cracking.

If using a web page for users to submit their credentials, it is strongly recommended that you use TLS for both the web form page and for the request validating the user credentials.

Lastly, remember to define routes to restrict access to content that should only be served to certain users. Otherwise those pages will also be visible via the default server.


## Log Files

Ioto will log satisfied requests to the access log (usually logs/access.log) and errors to the error log (usually logs/error.log). It is recommended that you regularly review these logs for suspicious activity.


## Common Security Threats

This section details some common security threats and issues and the steps you can take to mitigate them.

## Server Information Disclosure

HTTP responses often disclose information that an attacker can use to refine their attack. At a minimum, too much information enables the attack to proceed faster. Ioto minimizes these disclosures and does not emit a **Server** HTTP header and strives to minimize unnecessary disclosures in responses. In cases where an illegal request is detected, Ioto will simply disconnect the client without issuing a response.

## Mixed Transports

Is is a bad idea to mix secure and non-secure content in one page. This means a web page should be totally served by HTTP or by HTTPS but not mix transports on one page. The reason is that a page served by HTTP can be compromised and the guarantee of HTTPS and that green-browser https logo is diminished if the form page from which the user enters there data is not 100% trust-worthy.

Ioto can support the "Strict-Transport-Security" HTTP response header. This header instructs the browser that all connections thereafter must only request over HTTPS. The specified age limit is in seconds To enable this, use the following directive:

```javascript
web: {
    headers: {
        'Strict-Transport-Security': 'max-age="31536000"',
    }
}
```

## Denial of Service

Denial of service attacks can be difficult to detect and defend against. However, Embedded devices typically have a well defined, understood and anticipated work load. Unlike enterprise system, which have highly variable work loads, embedded systems typically serve a specific purpose with known clients that follow a more predictable access pattern. This allows an embedded system to define a range of operation that is considered "normal" and to trigger alerts and defenses if access is outside of this "normal" operation.

## Cross Site Scripting

Cross-site vulnerabilities have ballooned over recent years. Unfortunately, there is no, single complete cure. However, Ioto supports the <a href="http://en.wikipedia.org/wiki/Content_Security_Policy">Content Security Policy (CSP)</a> scheme that can go a long way to reduce the exposure. It does this by exactly specifying and restricting what cross-site access is permitted.

The following Ioto directive enables the Content Security Policy and restricts all access to the origin site. This is a good starting point.

```javascript
{
    web: {
        headers: {
            "Content-Security-Policy":  "default-src 'self'"
        }
    }
}
```

See <a href="http://www.html5rocks.com/en/tutorials/security/content-security-policy/">An introduction to Content Security Policy</a> for more information.

## Cross Site Sharing

Cross origin sharing is often required when using XMLHttp (Ajax) requests to communicate with another server. <a href="http://en.wikipedia.org/wiki/Cross-origin_resource_sharing">Cross Origin Resource Sharing (CORS)</a> is a mechanism that allows scripts to make XMLHttp requests to another domain different from that which served the web page. This relaxes the same-origin policy of the browser, but in a controlled manner.

```javascript
headers: {
    CrossOrigin: "origin=* credentials=yes headers=X-CORS-HEADER age=3000",
}
```


## Hidden Frames

Hidden frames may be inserted by attackers to provide a launch-pad for running malicious scripts. Denying the ability to run frames can close of this attack vector.

The following Ioto directive will prevent frames or iframes from running in the web page.

```http
Header set X-Frame-Options deny
```

```javascript
headers: {
    "X-Frame-Options": "deny",
}
```

## High Profile Threats

There have been several high profile exploits that pose specific risks and have captured media attention. These are addressed specifically below with details on how to mitigate their effects.

## Crime Exploit

The <a href="http://en.wikipedia.org/wiki/CRIME_(security_exploit)">Crime Security Exploit</a> attacks and exploits leakage of information due to the varying effectiveness of TLS compression.

* Access to intercept and redirect client communications
* Ability to initiate requests from the client
* Encrypted communications TLS/SSL
* TLS level compression

By default, Ioto does not use TLS with TLS compression and is thus not vulnerable to this exploit. If you are using OpenSSL, the OpenSSL SSL_COMP_add_compression_method will enable TLS compression, so it is important not to use this OpenSSL API.

## Breach Exploit

The <a href="http://breachattack.com">Breach</a> exploit is a variant of the Crime exploit. It attacks and discovers private server information, such as CSRF tokens, by observing the compression of HTTP responses over TLS. This exploit requires the following to be effective:

* Access to intercept and redirect client communications
* Ability to initiate requests from the client
* Encrypted communications TLS
* Server-side encryption of dynamic responses
* Unmodified inclusion in the response body of client specified query or form data

Ioto does not dynamically compress response content and so is not vulnerable to this exploit.

## Beast Exploit

The <a href="http://en.wikipedia.org/wiki/BEAST_(computer_security)#BEAST_attack">Beast Security Exploit</a> attacks block ciphers used by TLS to access encrypted packets. This exploit requires the following to be effective:

* Use of TLS 1.0. This exploit has been addressed in TLS 1.1 and later.
* Ability to position attacker as man-in-the-middle between server and client
* Encrypted communications TLS
* Using a block cipher.

Notes:

* OpenSSL 0.9.6d and later are not vulnerable.
* Ioto 3.3 and later have shipped with fixed OpenSSL libraries.
* Using RC4 will mitigate the attack if upgrading OpenSSL is not feasible, however this cipher is vulnerable to the Luck 13 exploit described below.

## Lucky 13 Exploit

The <a href="http://www.isg.rhul.ac.uk/tls/TLStiming.pdf">Lucky 13</a> exploit attacks TLS by using varying padding for block ciphers.

This exploit requires the following to be effective:

* Ability to position attacker as man-in-the-middle between server and client
* Encrypted communications TLS
* Using a block cipher.
* Use of the RC4 cipher.

Notes:

* Mitigate by not using an RC4 cipher
* RC4 was not the default cipher in any Ioto release

## Documented Vulnerabilities

Ioto documents discovered security errors in its GitHub issue database at:

    https://github.com/embedthis/ioto-doc/issues?state=open

Specific issue reports are created for all confirmed or erroneous security reports that receive a CVE classification. You can search for specific CVE numbers or see all via:

    https://github.com/embedthis/ioto/search?q=CVE-&amp;type=Issues

Unfortunately some security researchers publish poorly diagnosed security alerts and sometimes do not contact the vendor for confirmation of the report. Consequently there exist some security CVE reports which are bogus. Ioto creates parallel CVE issues in the Ioto GitHub issue database to comment on these reports and provide accurate resolution information.

## Other Security References

Some of these articles may provide good background regarding security web servers.

* <a href="http://www.isg.rhul.ac.uk/tls/TLStiming.pdf">http://www.isg.rhul.ac.uk/tls/TLStiming.pdf</a>
* <a href="http://html5sec.org/">http://html5sec.org/</a>
* <a href="https://www.owasp.org/index.php/XSS_Filter_Evasion_Cheat_Sheet">https://www.owasp.org/index.php/XSS_Filter_Evasion_Cheat_Sheet</a>
* <a href="https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)">https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)</a>
* <a href="https://www.owasp.org/images/b/be/Cracking-into-embedded-devices-and-beyond.pdf">https://www.owasp.org/images/b/be/Cracking-into-embedded-devices-and-beyond.pdf</a>
* <a href="http://media.blackhat.com/bh-ad-11/Sutton/bh-ad-11-Sutton_Embeded_Web_Servers_WP.pdf">http://media.blackhat.com/bh-ad-11/Sutton/bh-ad-11-Sutton_Embeded_Web_Servers_WP.pdf</a>
* <a href="http://www.imperialviolet.org/2012/07/19/hope9talk.html">http://www.imperialviolet.org/2012/07/19/hope9talk.html</a>
* <a href="https://www.owasp.org/images/b/be/Cracking-into-embedded-devices-and-beyond.pdf">https://www.owasp.org/images/b/be/Cracking-into-embedded-devices-and-beyond.pdf</a>


## Ioto Secure By Default

Ioto is designed to be secure by default. This means that the default configuration enables security best-practices to limit cross-site-scripting vulnerabilities. It also implies a fairly restrictive security sandbox. This default configuration may be a little too restrictive for your application. In that case, you can easily remove or override these defaults by the relevant Ioto configuration properties.

Ioto uses the following built-in configuration for the default route.

```javascript
{
    headers: {
        "X-XSS-Protection": "1; mode=block",
        "X-Frame-Options": "deny",
        "X-Content-Type-Options": "nosniff",
        "Content-Security-Policy": "default-src 'self'",
    }
    timeouts: {
        inactivity: "30 secs",
        parse: "5 secs",
        request: "5 mins",
        session: "5 mins",
    }
    limits: {
        body:               "100K",
        connections:        50,
        form:               "10K",
        header:             "10K",
        sessions:           20,
        upload:             "1MB",
    }
}
```

The default Content Security Policy header is set to only permit content loaded from the server running ioto. It also bans inline scripts as these are vulnerable to inline script injection. See <a href="http://www.html5rocks.com/en/tutorials/security/content-security-policy/">An Introduction to Content Security Policy</a> for more information.
