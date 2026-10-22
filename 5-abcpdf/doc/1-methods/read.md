# Read Function

Reads an existing document.

## Syntax

[C#]

```csharp
void Read(string path)void Read(byte[] data)void Read(Stream stream)void Read(string path, string password)void Read(byte[] data, string password)void Read(Stream stream, string password)void Read(string path, XReadOptions options)void Read(byte[] data, XReadOptions options)void Read(Stream stream, XReadOptions options)
```

## Params

| **Name** | **Description** |
| --- | --- |
| path | The file path to the PDF, OpenOffice.org, SVG, RTF, XPS or other supported document type. |
| data | The source PDF data. |
| stream | The source PDF or document stream. |
| password | Any password needed to open the document. |
| options | The settings for the read. |

## Notes

Use this method to read a file into a document object. Any existing document content will be discarded. All properties will be set back to their defaults.

You can specify a PDF as a file path or by passing in the raw PDF data. Raw data must be held as an array of bytes. You can open encrypted PDF documents if you supply a valid password.

You may notice that colors in the PDF files are slightly different if you are reading non-PDF files. PDF handles alpha blending differently from other file formats. Refer to [SwfImportOperation.Import](8-abcpdf.operations/5-swfimportoperation/1-methods/import.md) for notes about alpha blending.

---
**Other File Types.**
This method supports the import of a range of other file types as standard.

For the import of doc and docx formats we recommend the use of WordGlue wherever possible. This eliminates the installation and configuration issues which can be associated with other doc import applications.

If OpenOffice.org is installed you can pass this method a file path to OpenOffice.org compatible documents. This means you can read file types like Microsoft Word (.doc, .docx), Microsoft Excel (.xls, xlsx), Rich Text Format (.rtf), PowerPoint (.ppt, .pptx), WordPerfect (.wpd), Lotus 1-2-3 (.wk1) and AutoCAD (.dxf).

If both Microsoft Office and .NET 3.5 are installed you can pass this method a path to any Microsoft Office compatible document. By default the Microsoft Office import operation works direct but it can also work via the XPS printer driver if you explicitly specify that the XpsAny read module be used. ABCpdf works with Office 2007 or later.

Rich Text Format (.rtf) documents are automatically imported using the nativeABCpdf Rich Text Format read module. This is generally the simplest, fastest and most reliable import method. However if you have specific needs you can also import them using the OpenOffice.org or Microsoft Office [XReadOptiions.ReadModules](xreadoptions/2-properties/1-readmodule.md).

You can pass this method a file path to an SVG or SVGZ document for conversion to PDF. ABCpdf supports a subset of SVG based around the SVG Tiny specification. For details see the [SVG Support](3-concepts/h-svgsupport.md) section of the documentation. You can also pass a file path to an XPS, OXPS or EPS document for conversion to PDF.

You can use a path to an image type such as JPEG or TIFF. ABCpdf will import multi-page images as multi-page documents. The image types supported are, broadly, those supported by the XImage object.

If you have a stream or data rather than a file path then you will need to specify an options parameter. This is necessary because in the case of data ABCpdf does not have a file extension from which it can automatically decide the type of module to use. As a result it regards all data as PDF unless told otherwise.

Full control over the import process can be implemented by specifying an options parameter. Reading a document without specifying an options parameter is functionally the same as reading a document using a default XReadOptions object.

---

After the read operation is complete the [Page](2-properties/page.md) property will contain the ID of the first page in the document. The [Rect](2-properties/rect.md) and [MediaBox](2-properties/mediabox.md) properties will reflect the size of the first page in the document.

ABCpdf .NET operates an intelligent just-in-time object loading scheme for PDFs which ensures that only those objects that are required are loaded into memory. This means that if you are modifying large documents then server load will be kept to a minimum. The original PDF document must be available for as long as the [Doc](default.md) object is being used. As a result you cannot modify or overwrite a PDF file while it is read into a [Doc](default.md) object. You will need to save your PDF to another location and then swap the two files around after the [Doc](default.md) object's use of the PDF is ended (with a call to [Clear](clear.md), Dispose, or Read with another PDF file).

Object deletion requires that all references to an object are removed. There is no way of doing this without checking each object in the document. So object deletion requires that every object in the document is loaded and for large documents this may place a significant load on the server. Reading encrypted documents places a greater load on the server because - like object deletion - it requires that every object in the document be loaded.

Please note that you are legally bound to respect the permissions present in existing PDF documents. For details please see the [Legal Requirement Section](1-introduction/8-legalrequirements.md).

The Read method may be used to read eForm FDF documents as well as PDF documents. Most PDF operations will not work on FDF documents but you can query field values using the GetInfo methods to return Unicode strings.

---
**Modifying Documents.**
ABCpdf will allow you to open, modify and save PDF documents.

ABCpdf will allow you to draw on top of PDF documents or add or delete pages or modify document data. However because of the way that PDF documents are structured it's unlikely that you'll be able to edit existing content.

So if there are blank spaces which you can draw your entries into that will work. Indeed you might want to draw a white box over existing content and then draw on that.

However you shouldn't expect to be able to edit and re-flow text that is already in your PDF.

---

## Example

The following illustrates how one might add a large red number to every page of a PDF document.

[C#]

```csharp
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
doc.FontSize = 500;
doc.Color.String = "255 0 0";
doc.TextStyle.HPos = 0.5;
doc.TextStyle.VPos = 0.3;
int count = doc.PageCount;
for (int i = 1; i <= count; i++) {
  doc.PageNumber = i;
  doc.AddText(i.ToString());
}
doc.Save("docread.pdf");
```

![](../../../images/pdf/docread.pdf.png)
docread.pdf - [Page 1]

Also see example code in:

* [ABCpdf Deletion Example](4-examples/05-deletion.md)
* [ABCpdf eForm Fields Example](4-examples/15-eform1.md)
* [ABCpdf eForm Placeholder Example](4-examples/15-eform2.md)
* [ABCpdf eForm Stamp Example](4-examples/15-eform3.md)
* [ABCpdf eForm FDF Example](4-examples/16-eformfdf.md)
* [ABCpdf PDF Rendering Example](4-examples/19-rendering.md)
* [ABCpdf WPF Tables Example](4-examples/21-wpftables.md)
* [Doc AddImageCopy Function](addimagecopy.md)
* [Doc AddImageDoc Function](addimagedoc.md)
* [Doc AddObject Function](addobject.md)
* [Doc RemapPages Method](remappages.md)
* [Doc SetInfo Function](setinfo.md)
* [Doc Root Property](2-properties/root.md)
* [XRendering AntiAliasImages Property](xrendering/2-properties/antialiasimages.md)
* [XRendering DrawAnnotations Property](xrendering/2-properties/drawannotations.md)
* [XRendering Overprint Property](xrendering/2-properties/overprint.md)
* [XRendering SaveCompression Property](xrendering/2-properties/savecompression.md)
* [XRendering SaveQuality Property](xrendering/2-properties/savequality.md)
* [XSaveOptions Template Property](xsaveoptions/2-properties/template.md)
* [XSaveOptions WritePageSeparator Property](xsaveoptions/2-properties/writepageseparator.md)
* [XSaveTemplateData SetMeasureResolution Function](xsavetemplatedata/1-methods/setmeasureresolution.md)
* [XTagging Open Function](xtagging/1-methods/04-open.md)
* [XTagging Close Function](xtagging/1-methods/05-close.md)
* [XTagging AddFocus Function](xtagging/1-methods/08-addfocus.md)
* [Focus OpaqueTypes  Property](xtagging.focus/2-properties/opaquetypes.md)
* [Eof Load Function](6-abcpdf.objects/2-objectsoup.eof/1-methods/01-load.md)
* [Catalog GetEmbeddedFiles Function](6-abcpdf.objects/catalog/1-methods/getembeddedfiles.md)
* [Catalog Metadata Property](6-abcpdf.objects/catalog/2-properties/metadata.md)
* [FileSpecification FileSpecification Function](6-abcpdf.objects/filespecification/1-methods/filespecification.md)
* [Page MakeFormXObject Function](6-abcpdf.objects/page/1-methods/makeformxobject.md)
* [Page Rotation Property](6-abcpdf.objects/page/2-properties/rotation.md)
* [Page Thumbnail Property](6-abcpdf.objects/page/2-properties/thumbnail.md)
* [PixMap GetBitmap Function](6-abcpdf.objects/pixmap/1-methods/getbitmap.md)
* [PixMap Recolor Function](6-abcpdf.objects/pixmap/1-methods/recolor.md)
* [PixMap Resize Function](6-abcpdf.objects/pixmap/1-methods/resize.md)
* [Signature Sign Method](6-abcpdf.objects/signature/1-methods/sign.md)
* [Signature Validate Function](6-abcpdf.objects/signature/1-methods/validate.md)
* [Signature CompliancePades Property](6-abcpdf.objects/signature/2-properties/compliancepades.md)
* [Signature CustomSigner Property](6-abcpdf.objects/signature/2-properties/customsigner.md)
* [Signature CustomSigner2 Property](6-abcpdf.objects/signature/2-properties/customsigner2.md)
* [Signature MaxSignatureLength Property](6-abcpdf.objects/signature/2-properties/maxsignaturelength.md)
* [ArrayAtom FromContentStream Function](7-abcpdf.atoms/arrayatom/1-methods/fromcontentstream.md)
* [OpAtom Find Function](7-abcpdf.atoms/opatom/1-methods/find.md)
* [RecolorOperation Recolor Function](8-abcpdf.operations/3-recoloroperation/1-methods/recolor.md)
* [RecolorOperation IccCmyk Property](8-abcpdf.operations/3-recoloroperation/2-properties/icccmyk.md)
* [RenderOperation Save Function](8-abcpdf.operations/6-renderoperation/1-methods/save.md)
* [PdfConformityOperation Save Function](8-abcpdf.operations/7-pdfconformityoperation/1-methods/save.md)
* [TextOperation Group  Function](8-abcpdf.operations/8-textoperation/1-methods/group.md)
* [ImageOperation GetImageProperties  Function](8-abcpdf.operations/9-imageoperation/1-methods/getimageproperties.md)
* [FlattenTransparencyOperation Flatten Function](8-abcpdf.operations/A-flattentransparency/1-methods/flatten.md)
* [ReduceSizeOperation Compact  Function](8-abcpdf.operations/B-reducesizeoperation/1-methods/compact.md)
* [AccessibilityOperation AccessibilityOperation  Constructor](8-abcpdf.operations/C-accessibilityoperation/1-methods/1-accessibilityoperation.md)
* [VectorizeTextOperation Vectorize Method](8-abcpdf.operations/L-vectorizetextoperation/1-methods/vectorize.md)
* [CloudVisionOperation StartOcr Function](8-abcpdf.operations/M-cloudvisionoperation/1-methods/04-startocr.md)
* [CustomFont CustomFont Function](8-abcpdf.operations/R-customfont/1-methods/01-customfont.md)
* [CustomFont Embed Function](8-abcpdf.operations/R-customfont/1-methods/02-embed.md).
