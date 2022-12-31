# List

The RList module is a simple growable list suitable for storing simple primitive data values or pointers to arbitrary objects.

## API Tour

To create a list:

```c
#include "r.h"

RList *list = rAllocList(initialSize, flags);
```

Lists can be created so that when the list is freed, each of the list items will also be freed.
If the `flags` are set to R_DYNAMIC_VALUE, then rFree() will be called on each list item when the list is freed. If the flags are set to R_STATIC_VALUE (the default), then list items will not be freed.

To free a list:

```c
rFreeList(list);
```

To add an item to the end of the list:

```c
rAddItem(list, myObject);
```

To clear the list:

```c
rClearList(list);
```

To get the number of items in the list:

```c
ssize length = rGetListLength(list);
```

To iterate over items in a list:

```c
void *item;
int index;
for (ITERATE_ITEMS(list, item, index)) {
    //  Process item
}
```

ITERATE_ITEMS is defined as:

```c
#define ITERATE_ITEMS(list, item, index) \
    index = 0; \
    list && index < list->length && ((item = list->items[index]) || 1); \
    index++
```

To get an item from the list at a specific index position:

```c
int index = 4;
rGetItem(list, index);
```

To insert an item at a specific position. This will insert myObject at index 4.

```c
rInserItemAt(list, 4, myObject);
```

To remove an item:

```c
rRemoveItem(list, myObject);

//  or remove at an Index
rRemoveItemAt(list, 4);
```

To grow a list:

```c
rGrowList(list, 1000);
```

To push and pop items:

```c
rPushItem(list, item);
item = rPopItem(list);
```

## API Reference

The full API is specified here:

[List API](../../ref/api/r/#rlist)
