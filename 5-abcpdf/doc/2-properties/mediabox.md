# MediaBox Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XRect`](../../xrect/index.md) | Letter Size<br>\[0, 0, 612, 792\]. | No | The current document page size (width and height). |

## Notes

This property reflects the size of the current page. It also determines the size of new pages created by the [AddPage](../1-methods/addpage.md) method. Note that changing the MediaBox does not change the current [Rect](rect.md). So typically you'll want to write code like this:

```csharp
theDoc.MediaBox.String = "0 0 200 300";
theDoc.Rect.String = theDoc.MediaBox.String;
```

Changing this property will change the size of pages created by subsequent calls to AddPage. However it will not change the size of the pages that have already been created. To change the size of the pages that have already been created you need to use the [SetInfo](../1-methods/setinfo.md) method. For example:

```csharp
theDoc.SetInfo(theDoc.Page, "/MediaBox:Rect", "0 0 200 300");
```

Similar methods can be used to control other page size measures such as the CropBox, BleedBox, TrimBox and ArtBox. For example:

```csharp
theDoc.SetInfo(theDoc.Page, "/CropBox:Rect", "20 20 180 280");
```

The default page size is often the one you'll want to use. However it may be that your PDFs are required to conform to a different page size. If this is the case you can simply specify the name of the size rather than the exact dimension. See the [Rect.String](../../xrect/2-properties/string.md) property for details.

## Example

The following code creates a PDF document containing three different pages each with a different size.

```csharp
using var doc = new Doc();
doc.Page = doc.AddPage();
doc.MediaBox.String = "A4";
doc.Page = doc.AddPage();
doc.MediaBox.String = "B5";
doc.Page = doc.AddPage();
doc.Save("docmediabox.pdf");
```

Also see example code in: [Doc AddImageDoc Function](../1-methods/addimagedoc.md).
