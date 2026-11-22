# ClearTextOperation Function

Removes any cached TextOperation and TextFragments associated with this object

## Syntax

```csharp
void ClearTextOperation()
```

## Params

| Name | Description |
| :---: | --- |
| none | n/a |

## Notes

Removes any cached [TextOperation](../2-properties/textoperation.md) and [TextFragments](../2-properties/textfragments.md) associated with this object.

This can reduce memory use or it can be used to allow text information to be regenerated after the TextLayer contents have been updated.
