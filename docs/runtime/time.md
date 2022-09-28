# Time

Ioto provides a suite of time management routines to help format, parse and manage time values.

Ioto stores calendar time in **Time** values that store the date/time as elapsed milliseconds since Jan 1, 1970. Time values may go backwards if the system date clock is adjusted.

Ioto stores system time in **Ticks** values that are a system representation of elapsed time in milliseconds. Ticks will never go backwards even if the system date clock is adjusted.

## API Tour

To get the current time:

    Time time = rGetTime();

To get the current time in ticks:

    Ticks ticks = rGetTicks()

To get a high resolution CPU tick counter on some systems:

    uint64 rGetHiResTicks();

To convert the time to a string local time representation:

    char *str = rFormatLocalTime("%a %b %d %T %Y %Z", time);

To convert to universal time:

    char *str = rFormatUniversalTime("%FT%TZ", time);

To get a local string representation of the current date:

    char *str = rGetDate(NULL);

To get an ISO format date:

    char *str = rGetIsoDate(time);

To get the elapsed time since a prior measurement:

    Ticks elapsed = rGetElapsedTicks(mark);

To get the remaining ticks until a timeout:

    Ticks remaining = rGetRemainingTicks(mark, timeout);

To parse an ISO date string:

    Time time = rParseIsoDate(isoDateString);

## API Reference

The full API is specified here:

[Time API](../../ref/api/r/#rtime)
