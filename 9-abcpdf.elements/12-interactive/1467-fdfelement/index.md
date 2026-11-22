# FDFElement Class

This class represents the FDF dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 459.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=467)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 556.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FDFElement`

An FDF (Forms Data Format) dictionary is the root of an FDF file, a compact format for exchanging form data between a PDF form and a server or other application.

The F entry references the target PDF document. The ID entry holds the file identifier for verification. The Fields array carries the field data as FDF field dictionaries mirroring the target AcroForm field tree.

The JavaScript entry references an FDF JavaScript dictionary whose scripts execute at various points during import. The Annots and EmbeddedFDFs entries carry annotation data and nested FDF files.

## Methods

| Method | Description |
| --- | --- |
| [FDFElement](1-methods/01-fdfelement.md) | Create a new FDFElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the fdf dictionary object. |
| [EntryID](2-properties/02-entryid.md) | Represents the "ID" entry of the fdf dictionary object. |
| [EntryFields](2-properties/03-entryfields.md) | Represents the "Fields" entry of the fdf dictionary object. |
| [EntryStatus](2-properties/04-entrystatus.md) | Represents the "Status" entry of the fdf dictionary object. |
| [EntryPages](2-properties/05-entrypages.md) | Represents the "Pages" entry of the fdf dictionary object. |
| [EntryEncoding](2-properties/06-entryencoding.md) | Represents the "Encoding" entry of the fdf dictionary object. |
| [EntryAnnots](2-properties/07-entryannots.md) | Represents the "Annots" entry of the fdf dictionary object. |
| [EntryDifferences](2-properties/08-entrydifferences.md) | Represents the "Differences" entry of the fdf dictionary object. |
| [EntryTarget](2-properties/09-entrytarget.md) | Represents the "Target" entry of the fdf dictionary object. |
| [EntryEmbeddedFDFs](2-properties/10-entryembeddedfdfs.md) | Represents the "EmbeddedFDFs" entry of the fdf dictionary object. |
| [EntryJavaScript](2-properties/11-entryjavascript.md) | Represents the "JavaScript" entry of the fdf dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
