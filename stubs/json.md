# JSON API

The JSON library provides JSON parsing, serialization and query capabilities. The library can parse strings and read files containing JSON text.

JSON can be read and serialized in strict JSON or in the more human readable JSON/5 format. When parsed, JSON is stored in-memory in a binary search tree for efficient querying. The library supports searching, querying and updating JSON values using dot and array notation.

The library supports the JSON and JSON/5 formats. JSON/5 is an extension of JSON that makes it easier to create, read and maintain configuration files in JSON. JSON/5 supports the following features to JSON:

* Object keys may be JavaScript identifiers without quotes.
* Objects or arrays may have a trailing comma.
* Strings may be single quoted.
* Strings may span multiple lines (single, double or back-tick quotes).
* Numbers may have a leading or trailing decimal point, be hexadecimal, may begin with a plus
* Values may be regular expressions.
* Undefined is a valid value.
* Single and multiline comments are allowed and preserved.

DOC_CONTENT
