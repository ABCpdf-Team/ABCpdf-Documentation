# ReportNotIndirectObject Function

Called to report an object which should be indirect but is not.

## Syntax

```csharp
virtual void ReportNotIndirectObject()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Called to report an object which should be indirect but is not.

Some entries are required to be indirect - to refer to an IndirectObject.

For example Page objects are always indirect and a reference to a Page will always be made via a RefAtom.

In the event that an object which is supposed to be indirect, is not, this function will be called.
