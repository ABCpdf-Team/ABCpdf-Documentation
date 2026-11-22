# AddImageCopy Function

Adds a copy of an existing image in the Doc, to the current page.

## Syntax

```csharp
int AddImageCopy(int id)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| id | An existing image object ID to be copied to the page again. |
| return | The ID of the newly added Image Object. |

## Notes

Adds a copy of an image which has already been inserted elsewhere in the document.

You can use this facility to add commonly used graphics such as watermarks. The raw image data is inserted only once which means that PDF size is greatly reduced.

This method only works with raster or bitmap images. So your ID must have been obtained from a previous call to [AddImageFile](addimagefile.md), [AddImageData](addimagedata.md) or [AddImageObject](addimageobject.md).

The image is scaled to fill the current [Rect](../2-properties/rect.md). It is transformed using the current [Transform](../../xtransform/index.md).

## Example

This example shows how to read an existing PDF document and insert a background image (for example a watermark) into every page.

We start by reading our template PDF document and finding out core information we will need to reference each page.

```csharp
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
int count = doc.PageCount;
```

We cycle through the pages inserting images as we go.

We set the layer property to ensure that the image gets added in the background (behind the page content) rather than on top of (in front of) existing content.

The first time we add an image file. Subsequent times we reference the image ID. This means that we embed only one copy of the image data and simply reference that data from each page.

Finally we save the modified PDF.

```csharp
int id = 0;
for (int i = 1; i <= count; i++) {
  doc.PageNumber = i;
  doc.Layer = doc.LayerCount + 1;
  if (i == 1) {
    string path = "../mypics/light.jpg";
    id = doc.AddImageFile(path, 1);
  }
  else
    doc.AddImageCopy(id);
}
doc.Save("watermark.pdf");
```

Given the following document.

|  |  |
| --- | --- |
| ![sample.pdf - \[Page 1\]](../../../images/pdf/sample.pdf.png)<br>sample.pdf - \[Page 1\] | ![sample.pdf - \[Page 2\]](../../../images/pdf/sample.pdf2.png)<br>sample.pdf - \[Page 2\] |
| ![sample.pdf - \[Page 3\]](../../../images/pdf/sample.pdf3.png)<br>sample.pdf - \[Page 3\] | ![sample.pdf - \[Page 4\]](../../../images/pdf/sample.pdf4.png)<br>sample.pdf - \[Page 4\] |

And the following image.

![](../../../images/light.jpg)

This is the kind of output you might expect.

|  |  |
| --- | --- |
| ![watermark.pdf - \[Page 1\]](../../../images/pdf/watermark.pdf.png)<br>watermark.pdf - \[Page 1\] | ![watermark.pdf - \[Page 2\]](../../../images/pdf/watermark.pdf2.png)<br>watermark.pdf - \[Page 2\] |
| ![watermark.pdf - \[Page 3\]](../../../images/pdf/watermark.pdf3.png)<br>watermark.pdf - \[Page 3\] | ![watermark.pdf - \[Page 4\]](../../../images/pdf/watermark.pdf4.png)<br>watermark.pdf - \[Page 4\] |
