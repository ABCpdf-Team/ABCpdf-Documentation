# Focus Function

Prepare document for drawing at the fragment location.

## Syntax

```csharp
void Focus()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Use this method to focus on the fragment.

This prepares the document for drawing at the fragment location.

After calling this function you can add content overlaying the fragment. For example you might call [Doc.FillRect](../../../5-abcpdf/doc/1-methods/fillrect.md) to overlay it.

Text is drawn at a height of one point, using a transformation matrix to scale it up. So, in general, after calling this method, the [Doc.Rect](../../../5-abcpdf/doc/2-properties/rect.md) Height will be 1.0.

The [Doc.Page](../../../5-abcpdf/doc/2-properties/page.md), [Doc.Rect](../../../5-abcpdf/doc/2-properties/rect.md) and [Doc.Transform](../../../5-abcpdf/doc/2-properties/transform.md) may all be changed as a result of calling this method.
