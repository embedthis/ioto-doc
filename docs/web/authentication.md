# Authentication

Authentication is the process by which a client's identity and capabilities are verified before granting access to server resources. Authentication is essential when you have content that you wish to protect and provide only to specific, approved clients.

The Ioto web server implements a powerful and flexible authentication framework that verifies username and password and controls client capabilities using a role based authorization mechanism.


## Overview

Web authentication has historically used [Basic or Digest](https://developer.mozilla.org/en-US/docs/Web/HTTP/Authentication) authentication. However these two methods have security and usability flaws and should not be used.

A preferred method is to use a web form to capture the username and password and then them transmit securely using an encrypted TLS connection where the credentials are validated by the web server.

## Configuration

Authentication for the Ioto web server is controlled by the **auth.json** JSON/5 configuration file.

Here is a sample auth.json configuration file:

```javascript
{
    auth: {
        roles: {
            "user":          ["view"],
            "administrator": ["view", "edit"],
        },
        users: {
            "ralph": {
                password: "BF1:00128:7B1MFk55Gswv648L:+zReK36LKHWNfbYKKNTsXhiqLMDxTsyK",
                roles:    ["administrator"],
            }
        }
    }
}
```

The authentication configuration is scoped under the **auth** property and defines the following properties:

* The access **roles** that are translated in access control "abilities".
* The **users** to define the users and their passwords and roles.

<!--
The configuration properties are defined in the [Authentication Properties](./properties.html).
-->

**SECURITY WARNING**: it is essential that the authentication file be stored outside the "web.documents" directory or any directory serving content.

## Access Roles

Access roles define a list of one or more "abilities" for each role. These abilities are just simple words and typically correspond to user capabilities verbs such as: "edit", "view", "create" or "delete".

The Ioto web server controls access to resources by requiring a specific "ability" to enable a URL route. If the authenticated user has a role that includes that ability, then the user is granted access.

For example:

```javascript
web: {
    routes: [
        { match: '/public/' },
        { match: '/auth/' },
        { match: '/admin/', can: 'edit' },
        { can: 'view', redirect: '/auth/login' },
    ]
}
```

Each route specifies a matching URL prefix except for the last route which is a catchall. To restrict access, the route provides a "**can**" property that specifies the required user ability to deny or permit access.

## Users and Passwords

Users are defined in the **auth.json** together with their passwords and access abilities. The passwords in the **auth.json** config file are hashed and salted according to best practices.

Each user is given a set of roles that are translated into a set of abilities.

Passwords are created by the [cryptMakePassword]() API or by using the [pass](../man/pass.html) utility program supplied with Ioto. The user passwords are hashed using the Bcrypt or SHA256 ciphers.

### Pass Program

The command line syntax for **pass** is:

```bash
pass [--cipher bcrypt|sha256] [--file auth.conf] [--password word] username roles...
```

The --file filename option specifies the name of the authentication file, if unspecified, the password will be printed on the standard output.

The --cipher option specifies the cipher used to hash and crypt the password. The default is bcrypt.

If the --password option is not used, the pass program will prompt for the password.

## Verifying Passwords

Authentication schemes define how the user credentials are captured from the user and supplied to Ioto. There are two classes of authentication schemes.

* <a href="#form">Web Form Authentication</a>
* <a href="#app">Custom Authentication</a>

<a id="form"></a>

## Form Authentication

The form authentication scheme uses a HTML web form for the user to enter their username and password credentials and a HTTP Post request to submit credentials to the server for verification. Ioto manages the login/logout process and if authentication succeeds, a login session is created and a cookie is returned to the client's browser. Subsequent requests that include the cookie will be automatically authenticated using the session.

### Web Form

Here is a sample minimal example login page:

```html
<html><head><title>login.html</title></head>
<body>
    <p>Please log in</p>
    <form name="details" method="post" action="/auth/login">
        Username <input type="text" name="username" value=''><br/>
        Password <input type="password" name="password" value=''><br/>
        <input type="submit" name="submit" value="OK">
    </form>
</body>
</html>
```

After the user enters their username and password and clicks OK, the form is posted and the **/auth/login** URL is requested. This URL should be bound to an Action via **webAddAction**. For example:

```c
static int login(Web *web)
{
    cchar *password, *username;

    username = webGetVar(web, "username", 0);
    password = webGetVar(web, "password", 0);

    if (webLogin(web, username, password)) {
        webRedirect(web, 302, "/welcome.html");
    } else {
        webRedirect(web, 401, NULL);
    }
    return 0;
}

webAddAction(host, "/auth/login", login);
```

The login function will retrieve the username and password entered by the user from the form post data and then validate these against the configured authentication details in **auth.json** using the **webLogin** API.

**SECURITY CAUTION:** The login request should only be performed over a secure TLS encrypted connection and never over plain "HTTP".

### Route Configuration

To implement the form based authentication, you should ensure the login and log out pages and all required graphics and stylesheets are accessible without authentication.

A typical set of routes for an authenticated web site is:

```javascript
web: {
    routes: [
        { match: '/public/' },
        { match: '/auth/' },
        { match: '/admin/', can: 'edit' },
        { can: 'view', redirect: '/auth/login' },
    ]
}
```

All public pages, stylesheets, javascript and images are stored under /public and can be accessed without authentication. Similarly, the login and logout actions are accessible under /auth which is publicly accessible. Once authenticated, users will have access to the /admin section if they possess a role with the 'edit' ability.

## Custom Authentication

You can easily create a custom or hybrid authentication scheme. You can choose to pass the username and password to the login action via other means such as an "Authorization" HTTP header or JSON payload. You would then adjust your login() function accordingly.

<a name="api"></a>

## Authentication APIs

See the the following API to manage authentication and authorization under program control.

* [webAddRole](../ref/api/web.md#group___web_1ga25b1423c6ed178c3db13826683be6f45)
* [webAddUser](../ref/api/web.md#group___web_1gaace756497c72ba13c1978e2ffcfcb210)
* [webLogin](../ref/api/web.md#group___web_1gadfeb44e8ddbb08cdf3c473083865e539)
* [webLogout](../ref/api/web.md#group___web_1ga208430eb7762674c331ca7441753d910)
* [webAddUser](../ref/api/web.md#group___web_1gaace756497c72ba13c1978e2ffcfcb210)
* [webSetUserPassword](../ref/api/web.md#group___web_1ga0308c5ce653a85171d3522c34c291d3f)
* [webSetUserRoles](../ref/api/web.md#group___web_1ga6d96fc5c56dc58fcf453381a98f41e57)
* [webSaveAuth](../ref/api/web.md#group___web_1gab82d231c94ca4f5fe914b0e79e38682c)


## Samples
Ioto provides a sample for user login:

* [Auth Sample](https://github.com/embedthis/ioto-samples/tree/master/auth)
