# Flatten Function

Flatten the transparency of pages in a document.

## Syntax

[C#]

```csharp
void Flatten(Doc doc)void Flatten(Pages pages)void Flatten(Page page)
```

## Params

| **Name** | **Description** |
| --- | --- |
| doc | The document containing transparency to be flattened. |
| pages | The pages whose transparency is to be flattened as referenced by a Pages IndirectObject. |
| page | The page whose transparency is to be flattened as referenced by a Page IndirectObject. |

## Notes

Flattens the transparent objects on pages in the document.

The FlattenTransparency operation removes any transparent objects and replaces them with opaque ones that appear the same.

Because the look of your PDF does not change it can then be displayed or printed on a device that does not support transparency.

The name 'Flatten' is used because PDF transparency is represented as a stack of objects. The FlattenTransparency operation reduces that stack height to one.

The term 'Transparency' covers perhaps more than you might think. The philosophy on this is that any construct listed in the 'Transparency' section of the PDF reference should be replaced.

Prior to PDF 1.4, objects were always opaque - the color of the object would become the color of the entire object - whether it was painted on the background or over previously painted objects.

With PDF 1.4 came the idea that some objects could contain transparent attributes that would allow a previously painted object on the page to show through the newly painted object.

These attributes include alpha, which is a numeric value for the opaqueness of an object.

They also include blend modes, where the color of the underlying object interacts with the color of the overlying object in some more complicated manner.

For more information on PDF transparency, please refer to the PDF Specification.

Note that this feature is only available under the ABCpdf Professional License.

## Example

Here we flatten all the transparent objects in a document.

[C#]

```csharp
var op = new FlattenTransparencyOperation();
op.DotsPerInch = 144;
op.ColorSpace = XRendering.ColorSpaceType.Rgb;
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
op.Flatten(doc);
doc.Save("Flattened.pdf");
```

