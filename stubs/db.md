# DB API

The DB library is a high performance NoSQL database for embedded applications. It supports fast, flexible local data access and transparent synchronization of data to the cloud. It is modeled after DynamoDB and the [OneTable](https://github.com/sensedeep/dynamodb-onetable) access library.

DB is a NoSQL database where database items items are documents of arbitrary complexity. Data items are implemented as JSON documents and are organized into entity tables. Application entities are defined via an [entity schema](https://github.com/sensedeep/dynamodb-onetable/blob/main/doc/schema-1.1.0.md) that specifies data fields and attributes.

DB uses Red/black binary search indexes and has controllable local persistency to disk and to the cloud on a per-table basis.

DOC_CONTENT
