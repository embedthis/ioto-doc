# Kickstart Screen Shots

The following screenshots show some of the functionality of the Kickstart manager application.

## Home Screen

![Home Page](../images/kickstart/home.png){.screen}

The Kickstart home screen with dashboard and pulldown notification event window.

## Widgets

![Gauge Widget](../images/kickstart/gauge.png){.screen}
![LED Widget](../images/kickstart/LedWidget.png){.screen}
![Numeric Widget](../images/kickstart/NumericWidget.png){.screen}
![Graph Widget](../images/kickstart/GraphWidget.png){.screen}

The dashboard can use graphical widgets connected to a server-side data source. Data is pushed from the server over WebSockets. A gauge can define a min to max range and it uses animation to smooth transitions between data points.

## Graphs
![Graphs](../images/kickstart/graphs.png){.screen}

Server data can be plugged into charts for graphical display. Ioto provides primitives to convert device data to JSON that can be easily connected to a suite of charts.

## Sidebar Navigation

![Navigation](../images/kickstart/navigation.png){.screen}

Kickstart supports multi-level navigation. The current option is highlighted with show/hide indicators. Menus can be hidden if the authenticated user does not have the required permissions.

![Sub Menus](../images/kickstart/submenu.png){.screen}

## Events Screen

![Events](../images/kickstart/events.png){.screen}

The events log describes system events of interest according to severity. You can create events in the server for any custom condition.

## Feedback

![Feedback](../images/kickstart/feedback.png){.screen}

Error messages and user feedback are transparently channeled to the browser and displayed with appropriate color coding. This may be customized by modifying the application theme stylesheet.

![Feedback Theme](../images/kickstart/feedback-2.png){.screen}

## Login Screen

![Login](../images/kickstart/login.png){.screen}

Kickstart include a complete user login mechanism. Passwords are securely hashed using Blowfish encryption. Kickstart automatically ensures the login form and request are transported using SSL.
After login, users can be granted access to parts of the application dependent on their configured roles.

## Dialogs

![Dialogs](../images/kickstart/dialog.png){.screen}

Kickstart includes easy to use confirmation modal dialogs to confirm destructive actions.

![Modals](../images/kickstart/modal.png){.screen}
