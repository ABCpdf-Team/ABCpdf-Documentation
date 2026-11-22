# Focus Function

Prepare document for drawing at the annotation location

## Syntax

```csharp
bool Focus()
```

## Params

| Name | Description |
| :---: | --- |
| return | True if the focus operation was successful. |

## Notes

Use this method to focus on the Annotation.

This prepares the document for drawing at the Annotation location.

If the operation was successful then the function returns true. If not then it will return false.

The [Doc.Page](../../../5-abcpdf/doc/2-properties/page.md), [Doc.Rect](../../../5-abcpdf/doc/2-properties/rect.md) and [Doc.Transform](../../../5-abcpdf/doc/2-properties/transform.md) may all be changed as a result of calling this method.
