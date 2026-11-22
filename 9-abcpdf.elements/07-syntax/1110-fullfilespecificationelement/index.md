# FullFileSpecificationElement Class

This class represents the full file specification dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 44, page 102.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=110)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 43, page 132.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.41, page 26.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=26)

This class is always an indirect object because it inherits from FileSpecificationElement which is always an indirect object.

A full file specification dictionary provides a comprehensive file reference that can include platform-specific paths, an embedded copy of the file, related file sets, and metadata about the referenced file.

The F entry gives a file path or URI as a byte string. The UF entry gives the same path as a Unicode string for platforms where Unicode is required. Together they allow the same file to be located on both legacy and modern systems.

The DOS, Mac, and Unix entries carry platform-specific file paths for compatibility with older PDF documents. These entries are deprecated in PDF 2.0 in favour of the F and UF entries.

The EF entry holds a dictionary mapping path keys (F, UF, DOS, Mac, Unix) to embedded file stream references. This is the mechanism for attaching files directly within the PDF rather than referencing external files.

The RF entry holds a related files array for each platform path, listing additional files that accompany the main file. This supports workflows where a document depends on a set of supporting files.

The Desc entry provides a human-readable description of the file for display in the viewer's attachments panel. The AFRelationship entry names the relationship between the document and the attached file, such as Source, Data, Alternative, Supplement, or Unspecified.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FileSpecificationElement`](../0011-filespecificationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.FullFileSpecificationElement`

## Methods

| Method | Description |
| --- | --- |
| [FullFileSpecificationElement](1-methods/01-fullfilespecificationelement.md) | Create a new FullFileSpecificationElement. |
|  | [inherited methods...](../0011-filespecificationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the full file specification dictionary object. |
| [EntryFS](2-properties/02-entryfs.md) | Represents the "FS" entry of the full file specification dictionary object. |
| [EntryF](2-properties/03-entryf.md) | Represents the "F" entry of the full file specification dictionary object. |
| [EntryUF](2-properties/04-entryuf.md) | Represents the "UF" entry of the full file specification dictionary object. |
| [EntryDOS](2-properties/05-entrydos.md) | Represents the "DOS" entry of the full file specification dictionary object. |
| [EntryMac](2-properties/06-entrymac.md) | Represents the "Mac" entry of the full file specification dictionary object. |
| [EntryUnix](2-properties/07-entryunix.md) | Represents the "Unix" entry of the full file specification dictionary object. |
| [EntryID](2-properties/08-entryid.md) | Represents the "ID" entry of the full file specification dictionary object. |
| [EntryV](2-properties/09-entryv.md) | Represents the "V" entry of the full file specification dictionary object. |
| [EntryEF](2-properties/10-entryef.md) | Represents the "EF" entry of the full file specification dictionary object. |
| [EntryRF](2-properties/11-entryrf.md) | Represents the "RF" entry of the full file specification dictionary object. |
| [EntryDesc](2-properties/12-entrydesc.md) | Represents the "Desc" entry of the full file specification dictionary object. |
| [EntryCI](2-properties/13-entryci.md) | Represents the "CI" entry of the full file specification dictionary object. |
| [EntryThumb](2-properties/14-entrythumb.md) | Represents the "Thumb" entry of the full file specification dictionary object. |
| [EntryEP](2-properties/15-entryep.md) | Represents the "EP" entry of the full file specification dictionary object. |
| [EntryAFRelationship](2-properties/16-entryafrelationship.md) | Represents the "AFRelationship" entry of the full file specification dictionary object. |
|  | [inherited properties...](../0011-filespecificationelement/index.md) |
