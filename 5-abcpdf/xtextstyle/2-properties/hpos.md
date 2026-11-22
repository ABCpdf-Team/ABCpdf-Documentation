# HPos Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double` | 0 | No | The current horizontal positioning factor (0 to 1). |

## Notes

This property determines the horizontal offset of blocks of text - used for left alignment, right alignment or centering.

The offset is measured as a proportion of the distance from the left. A value of zero indicates left alignment, a value of one half indicates centered text and a value of one indicates right alignment. Intermediate values can be used for intermediate offsets.

To vertically align text use the [VPos](vpos.md) property. To justify text use the [Justification](justification.md) property.

## Example

The following code adds two blocks of text to a document. The first block is left aligned and the second is right aligned. Before adding the text we change the current rectangle and frame it so that you can see how the text is aligned.

```csharp
using var doc = new Doc();
doc.FontSize = 96;
doc.Rect.Magnify(1.0, 0.5);
doc.Rect.Inset(40, 40);
doc.FrameRect();
doc.AddText("Left justified text...");
doc.Rect.Move(0, doc.Rect.Height + 80);
doc.FrameRect();
doc.TextStyle.HPos = 1.0;
doc.AddText("Right justified text...");
doc.Save("dochpos.pdf");
```

![dochpos.pdf](../../../images/pdf/dochpos.pdf.png)  
dochpos.pdf

Also see example code in: [ABCpdf Deletion Example](../../../4-examples/05-deletion.md), [ABCpdf Headers and Footers Example](../../../4-examples/06-headers.md), [Doc AddPage Function](../../doc/1-methods/addpage.md), [Doc Append Function](../../doc/1-methods/append.md), [Doc Read Function](../../doc/1-methods/read.md), [Doc RemapPages Method](../../doc/1-methods/remappages.md), [XRendering SaveAlpha Property](../../xrendering/2-properties/savealpha.md), [XTagging Close Function](../../xtagging/1-methods/05-close.md), [XTransform AngleUnit Property](../../xtransform/2-properties/angleunit.md), [XpsImportOperation Import Function](../../../8-abcpdf.operations/4-xpsimportoperation/1-methods/import.md), [SwfImportOperation Import Function](../../../8-abcpdf.operations/5-swfimportoperation/1-methods/import.md).
