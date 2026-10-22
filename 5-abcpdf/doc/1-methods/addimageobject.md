# AddImageObject 
Function

Adds an XImage based image to the current page.

## Syntax

[C#]

```csharp
int AddImageObject(XImage image) int AddImageObject(XImage image, bool transparent)
```

## Params

| **Name** | **Description** |
| --- | --- |
| image | An XImage containing the image to be added to the page. |
| transparent | Whether transparency information should be preserved. This parameter overrides the PreserveTransparency property of the XReadOptions used to create the XImage. If this parameter is not specified and the XImage has been created without a XReadOptions, this parameter is defaulted to false. |
| return | The ID of the newly added Image Object. If the image is added as multiple objects, such as if it has been created with an XReadOptions with ReadModule of SwfVector (with a non-null Operation), Xps, or XpsAny, the ID is zero. If XReadOptions.Operation has been null, the temporary SwfImportOperation allows this method to return the ID of the GraphicLayer for the frame of XReadOptions.Frame. |

## Notes

If the [XImage](ximage/default.md) has been created with an [XReadOptions](xreadoptions/default.md) with [ReadModule](xreadoptions/2-properties/1-readmodule.md) that uses an [Operation](xreadoptions/2-properties/operation.md), the operation will be invoked and the result depends on the operation. Otherwise, this method gets an image from the Image object and adds it to the current page returning the ID of the newly added object.

Adds the [Selection](ximage/2-properties/selection.md) of the current [Frame](ximage/2-properties/frame.md) returning the ID of the newly added object.

Ultimately each image which is imported goes through a [ReadModule](xreadoptions/2-properties/1-readmodule.md), so see that property for the types of images that can be imported and how they are handled.

If the Transparent parameter is set to true then any transparency information will be preserved. This allows you to add formats such as transparent GIF, PNG with alpha channel, or images with masks set using the [Image.SetMask](ximage/1-methods/setmask.md) method.

The image is scaled to fill the current [Rect](2-properties/rect.md). It is transformed using the current [Transform](xtransform/default.md).

---
**Hyperlinks.**
Sometimes you may wish to insert annotations such as links to an external web page specified using a URI or URL. The AddTextStyled method allows you to specify links but only on text. If, for example, you want to insert a link over content such as an image you need to add it separately. You can do this using code of the following form.

[C#]

```csharp
static int AddLinkToUri(Doc doc, XRect rect, string uri) {
  int id = doc.AddObject("<< /Type /Annot /Subtype /Link /A << /Type /Action /S /URI /URI () >> /Border [0 0 0] >>");
  doc.SetInfo(doc.Page, "/Annots*[]:Ref", id);
  doc.SetInfo(id, "/Rect:Rect", rect.String);
  doc.SetInfo(id, "/A/URI:Text", uri);
  return id;
}
```

If you wish to link to a particular page specified by page ID you can use code of the following form.

[C#]

```csharp
static int AddLinkToPage(Doc doc, XRect rect, int pageID) {
  int id = doc.AddObject("<< /Type /Annot /Subtype /Link /Border [0 0 0] /A << /Type /Action /S /GoTo /D [ /XYZ null null 0] >> >>");
  doc.SetInfo(doc.Page, "/Annots*[]:Ref", id);
  doc.SetInfo(id, "/Rect:Rect", rect.String);
  doc.SetInfo(id, "/A/D[0]:Ref", pageID.ToString());
  return id;
}
```

---

