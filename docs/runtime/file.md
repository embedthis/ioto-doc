# File

Ioto provides some simple helper functions to read and write files.

To read a file in one go:

```c
ssize   size;

char *data = rReadFile("file.txt", &size);
```

To write a file:

ssize length = rWriteFile("file.txt", data, dataLen, 0644);
```c

```

To get the current working directory:

```c
char dir = rGetCwd();
```

To get the base directory containing the application executable:

```c
char dir = rGetAppDir();
```


To join two file paths:

```c
PUBLIC char *rJoinFile(cchar *base, cchar *other);
```

To matach a file against a glob pattern. This tests a filename against a file pattern that list may contain the wildcards: "?" Matches any single character, "*" matches zero or more characters of the file or directory and "**"/ matches zero or more directories

```c
if (rMatchFile("file.text", "*.txt")) {
    //  Matches
}
```

To get a list of files in a directory or subdirectories that match the given wildcard pattern.

```c
RList *list = rGetFiles("/somedir", "*.txt", 0);
```

To walk a directory tree and invoke a callback for each path that matches a given pattern.

```c
rWalkDir("/dir", "*.txt", fn, arg, 0);
```

To get a temporary filename:

```c
char *path = rGetTempFile("/tmp", "TEMP-");
```

This returns a temporary filename in /tmp starting with the "TEMP-" prefix.
