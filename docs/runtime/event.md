# Event

R provides a simple eventing mechanism to schedule events to run at some time in the future.

Events are described by REvent objects which are created and queued via #rCreateEvent. Events are scheduled once unless restarted via rRestartEvent.

## API Tour

To create an event to run a function at some delay in the future.

```c
Ticks delay = 1000;
REvent event = rCreateEvent(fn, data, delay);
```

This will run the fn() function in 1 second and pass the reference data as an argument.

```c
void fn(void *data) {
    //  Do something
}
```

The rCreateEvent API will return an event ID that can be used to cancel the event before it is run by calling **rStopEvent**.

```c
rStopEvent(event);
```

You can lookup an event to see if it is scheduled:

```c
if (rLookupEvent(event)) {
    //  scheduled
}
```

## Running Events

The Ioto main program calls the **rServiceEvents()** API to run scheduled events as they come due.

This call will call rRunEvents() to run due events and then wait via **rWait** for any pending I/O.

If you replace the Ioto main program, you must call rServiceEvents in your main.

## Watching for Conditions

You can watch for certain conditions to happen and be notified when they do. For example, it can be useful to be notified when the network connects or disconnects to the cloud.

To watch for a condition:

```c
rWatch("mqtt:connect", fn, data);
```

To then signal a condition, call:

```c
rSignal("mqtt:connect", arg);
```

This will invoke fn() with the watch data and the signal argument.

```c
void fn(void *data, void *arg) {
    //  Do something
}
```

To disable watching, call:

```c
rWatchOff("mqtt:connect", fn, data);
```

This will disable the watch registered with exactly the same arguments.
