# Focus Function

Prepare document for drawing at the field location.

## Syntax

```csharp
bool Focus()
```

## Params

| Name | Description |
| :---: | --- |
| return | True if the focus operation was successful. |

## Notes

Use this method to focus on the field.

This prepares the document for drawing at the field location.

If the operation was successful then the function returns true. If the field has no visible location it will return false.

The [Doc.Page](../../../5-abcpdf/doc/2-properties/page.md), [Doc.Rect](../../../5-abcpdf/doc/2-properties/rect.md) and [Doc.Transform](../../../5-abcpdf/doc/2-properties/transform.md) may all be changed as a result of calling this method.

## Example

Also see example code in: [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md).
