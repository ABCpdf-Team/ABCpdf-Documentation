# GetDocObjectID Method

Gets the object ID of the IndirectObject in the PDF document.

## Syntax

```csharp
int GetDocObjectID()
```

## Params

| Name | Description |
| :---: | --- |
| return | The object ID (or zero if it has no associated object). |

## Notes

The method returns the object ID of the IndirectObject for this JavaScript value. For example, if this value is a Field, the method returns the object ID of the corresponding Annotation.

## Example

See the [JSOptions.SetUp](../../jsoptions/3-events/setup.md) event.
