# MakeFieldIntoGroup Function

Make duplicate fields into synchronized groups.

## Syntax

```csharp
bool MakeFieldIntoGroup(Field inField)
```

## Params

| Name | Description |
| --- | --- |
| inField | The field to operate on |

## Notes

Make duplicate fields into synchronized groups. Scans through sibling fields looking for duplicate names. Any duplicates are put together in a field group so that they will synchronize.

