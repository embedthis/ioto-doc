# Request Routing

Ioto includes a flexible request routing engine that routes client HTTP requests to appropriate request handlers. An Ioto configuration will typically have several routes. When a request is received, Ioto tests routes in sequence and selects the first matching route to handle the request.

<a id="configuration"></a>

## Route Configuration

Routes are defined in the **web.json5** configuration file.

```javascript
routes: [
    { match: '/public/' },
    { match: '/auth/' }
    { match: '/members/', can: 'view' }
    { match: '/admin/', can: 'edit' },
    { can: 'edit', redirect: '/auth/login' },
],
```

This example defines five routes. Routes can specify a **match** property that defines a matching URL prefix for the route to be used.

## Route Ordering

When multiple routes are defined, a client request will test each route in the order in which they are declared in the routes array.

To process a request, Ioto compares the request URL with the route **match** property prefix. If the URL begins with the **match** property, the route is selected. So ordering is very important.

## Route Matching

A route that terminates with "/" will match any URL that begins with that pattern. If the route does not end with "/" it must match the entire URL path (without query or reference fragment).

The special route match pattern "/" will match only the URL "/". i.e. the site home page.

If the route does not contain a match pattern, all URLs will match. In this case, the route becomes a "catch-all".

Routes with longer or more qualified route **match** properties should be defined first before more general routes.

## Route Authorization

If the selected route contains an authorization **can** property, the user must be logged in and possess the required ability specified by the **can** property.

If the user is not logged in, or if the user does not have the requisite ability, the request will not proceed.

In that case, if the route contains a **redirect** property, the request will receive a redirect 302 response toward the URL specified by the **redirect** property. If there is no such property, the request will receive a 401 Not Authorized response.


## Route Patterns

A common pattern for web management applications is to require user authentication for all operations. Such web apps may have two levels of authorization, registered users and administrators.

To support such two-level access control, consider the following route list:

```javascript
routes: [
    { match: '/public/' },
    { match: '/auth/' }
    { match: '/admin/', can: 'edit' },
    { can: 'view', redirect: '/auth/login' },
],
```

The following directory / URL structure would then be employed.

* /public/css &mdash; public stylesheets
* /public/js &mdash; public javascript
* /public/images &mdash; public images
* /auth/index.html &mdash; login form
* /auth &mdash; /auth/login and /auth/logout action routines
* /admin &mdash; administrators only
