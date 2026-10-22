# MakeAccessible  Function

Tags the document for accessibility.

## Syntax

[C#]

```csharp
void MakeAccessible()
```

## Params

| **Name** | **Description** |
| --- | --- |
| Return | The text. |

## Notes

This function scans the document, performs a semantic analysis on it and tags it for accessibility purposes using techniques broadly based around the PDF/UA standard and Section 508 compliance.

User accessibility standards like PDF/UA rely on Tagged PDF. This standard was initially put forward by the Association for Information and Image Management (AIIM) but was later adopted via the ISO in the form of ISO 14289-1 Document management applications -- Electronic document file format enhancement for accessibility.

Strictly speaking Section 508 refers to the application rather than the document but of course this means that the producers of applications which consume documents are in a good position to mandate that documents must conform to certain standards so that the application can provide appropriate information. This is what people generally refer to when they talk about PDFs as being Section 508 compliant. Appropriate tagging achieves that aim.

Tagging allows people who have disabilities to have the content in a PDF presented to them via different mechanisms, For example an accessible PDF would provide information on page structure to allow a PDF reader to speak the content of the document. However there are a variety of assistive technologies available, ranging from readers to magnifiers to navigational aids.

Tagged PDFs are the same as normal PDFs but they have been annotated with metadata in the form of PDF tags. This metadata is required because PDF documents contain good layout information but little semantic structure. The tags that are required supply this semantic structure. The way they are inserted and operate is defined in the Adobe PDF Specification. The types of tags that are used and the way they are used are defined by accessibility standards such as PDF/UA.

The semantic analysis provided by ABCpdf is based around reading order and results in the logical structure of the PDF being determined. Content that is regarded as irrelevant is tagged as being an artifact in line with the PDF/UA standard.

Images present a particular challenge as automated processes do not find it easy to generate descriptions from bitmaps. However if you know what the different images represent you can tag each [PixMap](6-abcpdf.objects/pixmap/default.md) object dictionary with a "XXAlt" entry referring to a [StringAtom](7-abcpdf.atoms/stringatom/default.md). When the MakeAccessible function is called these entries will be picked up and used and then deleted.

The MakeAccessible function will result in any existing tagged content being discarded. This is necessary because, while it is possible to determine if a document is already tagged, it is not possible to determine if it has been correctly tagged. Many PDF consumers do not understand tags and will not update the metadata appropriately if they operate on such documents.

To determine whether a document has been tagged you can find the "MarkInfo" entry in the [Doc.Catalog](6-abcpdf.objects/catalog/default.md) as a [DictAtom](7-abcpdf.atoms/dictatom/default.md) and then get the "Marked" entry of that as a [BoolAtom](7-abcpdf.atoms/boolatom/default.md). The default is false.

You may wish to set the [SaveOptions.CompressObects](5-abcpdf/xsaveoptions/2-properties/compressobjects.md) property to true, to reduce output size on save.

## Example

Also see example code in: [AccessibilityOperation AccessibilityOperation  Constructor](1-accessibilityoperation.md).
