# TriggerActionFlowChangeEvent Class

The `TriggerActionFlowChangeEvent` class is a subclass of the `TriggerActionFlow`
class that is used to handle change events.

Change events are events that are generated when a record is created, updated, or deleted.
The `TriggerActionFlowChangeEvent` class provides the ability to access the change event header in the Flow interview.

To use the `TriggerActionFlowChangeEvent` class, you must first create a Flow that accepts a variable of
type `FlowChangeEventHeader` .

You can then use the `TriggerActionFlowChangeEvent` class to invoke the Flow and pass the change event header
as the input variable.

**Group** Trigger Actions Framework

**Inheritance**

[TriggerActionFlow](TriggerActionFlow.md)

## Fields

### `flowName`

_Inherited_

#### Signature

```apex
public flowName
```

#### Type

String

---

### `allowRecursion`

_Inherited_

#### Signature

```apex
public allowRecursion
```

#### Type

Boolean

## Methods

### `bypass(flowName)`

_Inherited_

This method bypasses the execution of the Flow for the specified list of records.

#### Signature

```apex
public static void bypass(String flowName)
```

#### Parameters

| Name     | Type   | Description                         |
| -------- | ------ | ----------------------------------- |
| flowName | String | The API name of the Flow to bypass. |

#### Return Type

**void**

---

### `clearBypass(flowName)`

_Inherited_

This method clears the bypass for the specified list of records.

#### Signature

```apex
public static void clearBypass(String flowName)
```

#### Parameters

| Name     | Type   | Description                                       |
| -------- | ------ | ------------------------------------------------- |
| flowName | String | The API name of the Flow to clear the bypass for. |

#### Return Type

**void**

---

### `isBypassed(flowName)`

_Inherited_

This method checks if the Flow is bypassed for the specified list of records.

#### Signature

```apex
public static Boolean isBypassed(String flowName)
```

#### Parameters

| Name     | Type   | Description                                       |
| -------- | ------ | ------------------------------------------------- |
| flowName | String | The API name of the Flow to check the bypass for. |

#### Return Type

**Boolean**

,[object Object], if the Flow is bypassed for the specified list of records, ,[object Object], otherwise.

---

### `clearAllBypasses()`

_Inherited_

This method clears all bypasses for all Flows.

#### Signature

```apex
public static void clearAllBypasses()
```

#### Return Type

**void**

---

### `validateType(bypassType)`

_Inherited_

This method validates the specified bypass type.

#### Signature

```apex
public static void validateType(String bypassType)
```

#### Parameters

| Name       | Type   | Description                  |
| ---------- | ------ | ---------------------------- |
| bypassType | String | The bypass type to validate. |

#### Return Type

**void**

#### Throws

IllegalArgumentException: if the bypass type is not valid.

---

### `beforeInsert(triggerNew)`

_Inherited_

This method executes the Flow for the specified list of records before the insert of the records.

#### Signature

```apex
public void beforeInsert(List<SObject> triggerNew)
```

#### Parameters

| Name       | Type                | Description                                  |
| ---------- | ------------------- | -------------------------------------------- |
| triggerNew | List&lt;SObject&gt; | The list of records to execute the Flow for. |

#### Return Type

**void**

---

### `afterInsert(triggerNew)`

_Inherited_

This method executes the Flow for the specified list of records after the insert of the records.

#### Signature

```apex
public void afterInsert(List<SObject> triggerNew)
```

#### Parameters

| Name       | Type                | Description                                  |
| ---------- | ------------------- | -------------------------------------------- |
| triggerNew | List&lt;SObject&gt; | The list of records to execute the Flow for. |

#### Return Type

**void**

---

### `beforeUpdate(triggerNew, triggerOld)`

_Inherited_

This method executes the Flow for the specified list of records before the update of the records.

#### Signature

```apex
public void beforeUpdate(List<SObject> triggerNew, List<SObject> triggerOld)
```

#### Parameters

| Name       | Type                | Description                                     |
| ---------- | ------------------- | ----------------------------------------------- |
| triggerNew | List&lt;SObject&gt; | The list of new records that are being updated. |
| triggerOld | List&lt;SObject&gt; | The list of old records that are being updated. |

#### Return Type

**void**

---

### `afterUpdate(triggerNew, triggerOld)`

_Inherited_

This method executes the Flow for the specified list of records after the update of the records.

#### Signature

```apex
public void afterUpdate(List<SObject> triggerNew, List<SObject> triggerOld)
```

#### Parameters

| Name       | Type                | Description                                     |
| ---------- | ------------------- | ----------------------------------------------- |
| triggerNew | List&lt;SObject&gt; | The list of new records that are being updated. |
| triggerOld | List&lt;SObject&gt; | The list of old records that are being updated. |

#### Return Type

**void**

---

### `beforeDelete(triggerOld)`

_Inherited_

This method executes the Flow for the specified list of records before the delete of the records.

#### Signature

```apex
public void beforeDelete(List<SObject> triggerOld)
```

#### Parameters

| Name       | Type                | Description                                     |
| ---------- | ------------------- | ----------------------------------------------- |
| triggerOld | List&lt;SObject&gt; | The list of old records that are being deleted. |

#### Return Type

**void**

---

### `afterDelete(triggerOld)`

_Inherited_

This method executes the Flow for the specified list of records after the delete of the records.

#### Signature

```apex
public void afterDelete(List<SObject> triggerOld)
```

#### Parameters

| Name       | Type                | Description                                     |
| ---------- | ------------------- | ----------------------------------------------- |
| triggerOld | List&lt;SObject&gt; | The list of old records that are being deleted. |

#### Return Type

**void**

---

### `afterUndelete(triggerNew)`

_Inherited_

This method executes the Flow for the specified list of records before the undelete of the records.

#### Signature

```apex
public void afterUndelete(List<SObject> triggerNew)
```

#### Parameters

| Name       | Type                | Description                                  |
| ---------- | ------------------- | -------------------------------------------- |
| triggerNew | List&lt;SObject&gt; | The list of records that are being restored. |

#### Return Type

**void**
