# Device Configuration

The **config/device.json5** configuration file contains device identification and descriptive properties to uniquely identify a device. It is used during device registration and cloud provisioning.

The device.json5 contains properties for:

* The device unique ID
* A product token indicating which product on which the device is based
* When the device was made
* Identifying description and model strings
* Whether the device is a test device

You can also add any other properties to the device.json5 that may provide useful device context. These properties will be saved in the cloud device database and will be available to device managers.

**Example**

```javascript
{
    id: "731KPY4BA6",
    productToken: "01GHTB33NJZXYZ1XA80GY5SZSN",
    product: "Acme Router",
    created: "2022-12-14T03:20:39.347Z",
    description: "Acme Router for Home Office",
    model: "Office-Hub",
    test: false,
    ports: 16,
    memory: "256MB"
}
```

## created

| Name | created |
|-|-|
| Description | An ISO date for when the device was manufactured. |
| Synopsis | `created: 'ISO Date'.|

**Example**

```javascript
created: '2022-12-14T03:20:39.347Z'
```

## description

| Name | description |
|-|-|
| Description | A short description of your product. |
| Synopsis | `description: 'Short sentence'`|
| Notes | This should be a one sentence description of your product.|

**Example**

```javascript
description: 'Acme Router for Home Office'
```

## id

| Name | id |
|-|-|
| Description | The unique device claim ID. |
| Synopsis | `id: "Unique device ID"` |
| Notes | The <b>id</b> property defines a unique per-device ID. This must be a globally unique ID. This should have a minimum of 80-bits of entropy. For more information, see [Builder Serialization](https://www.embedthis.com/builder/doc/clouds/serialize/).|

**Example**

```javascript
id: '731KPY4BA6'
```


## model

| Name | model |
|-|-|
| Description | A product model string. |
| Synopsis | `model: 'Short model string'`|
| Notes | This should be a short identifier that describes your device model type.|

**Example**

```javascript
model: 'Office-Hub-32'
```


## product

| Name | product |
|-|-|
| Description | The name of your product. |
| Synopsis | `product: 'Few words'`|
| Notes | This should be the short, public name of your product.|

**Example**

```javascript
limits: {
    reconnect: '10secs',
    stack: '16K',
}
```

## productToken

| Name | productToken |
|-|-|
| Description | The product token is a Builder token that identifies the product on which the device was based. |
| Synopsis | `directories: { "log": ".", state: "./state" }` |
| Notes | To obtain a product token, use the Builder to create a product definition and then get the **ProductID** token from the token list.|

**Example**

```javascript
productToken: '01GHTB33NJZXYZ1XA80GY5SZSN'
```


## test

| Name | test |
|-|-|
| Description | Determine if the device is a test device |
| Synopsis | `test: true | false`|
| Notes | This defaults to false.

**Example**

```javascript
test: true
```
