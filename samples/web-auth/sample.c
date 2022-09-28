/*
    web-auth/sample.c - Authenticate web requests
 */

/********************************** Includes **********************************/

#include "ioto.h"

/*********************************** Forwards *********************************/

static int logout(Web *web);
static int login(Web *web);

/************************************* Code ***********************************/
/*
    Entry point
*/
PUBLIC int ioStart()
{
    WebHost *host;

    host = ioto->webHost;
    webAddAction(host, "/auth/login", login);
    webAddAction(host, "/auth/logout", logout);
    return 0;
}


static int login(Web *web)
{
    cchar *password, *username;

    username = webGetVar(web, "username", 0);
    password = webGetVar(web, "password", 0);

    if (webLogin(web, username, password)) {
        webRedirect(web, 302, "/welcome.html");
    } else {
        rError("app", "Login failed");
        webRedirect(web, 401, NULL);
    }
    return 0;
}


static int logout(Web *web)
{
    webLogout(web);
    webRedirect(web, 302, "/");
    return 0;
}


/*
    Copyright (c) Embedthis Software. All Rights Reserved.
    This is proprietary software and requires a commercial license from the author.
 */
