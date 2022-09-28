# String

The Ioto runtime provides a suite of "safe" string handling routines.

These help guard against buffer overflows and NULL dereferencing errors.

The strings are all NULL tolerant and will not crash when passed NULL arguments. For example, copying a NULL string will return an empty string and searching for a pattern in a NULL string will return false.

The string routines all use a "s" prefix.

## API Tour

There are many (many) runtime string routines. Here is a short sampling:

Search for a character in a string (strchr):

    char *ptr = schr(str, '\n');


Clone (duplicate) a string (strdup):

    char *ptr = sclone(str);

Get the length of a string (strlen):

    ssize length = slen(str);

Check if a string contains a pattern (strstr):

    char *ptr = scontains(str, "abc");

Format a string (sprintf):

    char *str = sfmt("Hello %s", "world");

Join two strings

    char *result = sjoin("one", "two", NULL);

Get a title case string (Leading cap):

    char *str = stitle("pool")

Trim a string of certain characters:

    char *trimed = strim(str, " \t\n\r", R_TRIM_BOTH);


## API Reference

The full API is specified here:

[String API](../../ref/api/r/#rstring)
