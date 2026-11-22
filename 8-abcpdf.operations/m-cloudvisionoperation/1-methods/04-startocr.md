# StartOcr Function

Start OCR operation on the pages that have been added.

## Syntax

```csharp
void StartOcr()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Start OCR operation on the pages that have been added.

## Example

Here we read a TIFF into a Doc, OCR it and then save the PDF.

The text in this document is invisible which means you can select and copy it, but it does not obscure the image in the background.

To run this code you will need to replace the Google API key with one of your own.

```csharp
string theSrc = "../mypics/multipage.tif";
string theDst = "CloudOCR.pdf";
using (Doc doc = new Doc()) {
  doc.Read(theSrc);

  var op = new CloudVisionOperation(doc);
  op.AddPages();
  op.ApiKey = "AIzAUlBcTPDwxUNn5uQvSHONpsTpAqVJHbfOa";
  op.StartOcr();
  op.WaitAll();
  doc.Save(theDst);
}
```
