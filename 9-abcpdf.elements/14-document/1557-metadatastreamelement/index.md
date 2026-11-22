# MetadataStreamElement Class

This class represents the metadata stream. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 315, page 549.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=557)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 347, page 711.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A metadata stream carries XMP metadata as a UTF-8 encoded XML document. XMP provides a standard, extensible way to describe properties of a PDF document or individual objects within it.

The stream must not be encrypted or compressed with a non-identity filter. This ensures metadata is accessible to tools that lack the document password or do not implement PDF decompression.

Metadata streams may be attached to the document catalog, individual pages, form XObjects, and other objects. The metadata at each level describes that specific object.

In PDF 2.0, XMP metadata is the preferred mechanism for recording document-level properties. The older document information dictionary is deprecated in favour of XMP.

A conforming reader that modifies a document must update any XMP metadata streams to reflect the changes, keeping metadata accurate after editing.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MetadataStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [MetadataStreamElement](1-methods/01-metadatastreamelement.md) | Create a new MetadataStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryType](2-properties/02-entrytype.md) | Represents the "Type" entry of the metadata stream object. |
| [EntrySubtype](2-properties/03-entrysubtype.md) | Represents the "Subtype" entry of the metadata stream object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
