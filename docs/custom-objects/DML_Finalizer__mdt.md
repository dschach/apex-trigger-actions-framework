# DML Finalizer

## API Name

`DML_Finalizer__mdt`

## Fields

### Apex Class Name

**Required**

Enter the name of the Apex Class which defines the action to be taken

**API Name**

`Apex_Class_Name__c`

**Type**

_Text_

---

### Bypass Execution

Set this to true to bypass this Trigger Action from being called

**API Name**

`Bypass_Execution__c`

**Type**

_Checkbox_

---

### Bypass Permission

Optional. Enter the API name of a permission. If this field has a value, then the triggers on this object will be bypassed if the running user has the custom permission identified.

**API Name**

`Bypass_Permission__c`

**Type**

_Text_

---

### Order

**Required**

**API Name**

`Order__c`

**Type**

_Number_

---

### Required Permission

Optional. Enter the API name of a permission. If this field has a value, then the triggers on this object will only execute if the running user has the custom permission identified.

**API Name**

`Required_Permission__c`

**Type**

_Text_
