# Version20OpiElement Class

This class represents the version 2.0 opi dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 641.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=649)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 825.](https://www.iso.org/standard/63534.html)

A version 2.0 OPI dictionary provides metadata and placement parameters for high-resolution image substitution following the OPI 2.0 specification, which simplifies the placement model compared to version 1.3.

The F entry holds the file specification of the high-resolution original. The MainImage entry identifies the primary file in a multi-file image set.

The Size and CropRect entries describe the dimensions and cropped region. The Overprint entry records overprinting behaviour at output.

The Inks entry describes the image colorants, supporting multi-ink workflows. The IncludedImageDimensions and IncludedImageQuality entries describe the low-resolution proxy in the PDF.

The Tags entry holds application-specific key-value metadata.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.OpiElement`](../1647-opielement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Version20OpiElement`

## Methods

| Method | Description |
| --- | --- |
| [Version20OpiElement](1-methods/01-version20opielement.md) | Create a new Version20OpiElement. |
|  | [inherited methods...](../1647-opielement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the version 2. |
| [EntryMainImage](2-properties/02-entrymainimage.md) | Represents the "MainImage" entry of the version 2. |
| [EntryTags](2-properties/03-entrytags.md) | Represents the "Tags" entry of the version 2. |
| [EntrySize](2-properties/04-entrysize.md) | Represents the "Size" entry of the version 2. |
| [EntryCropRect](2-properties/05-entrycroprect.md) | Represents the "CropRect" entry of the version 2. |
| [EntryOverprint](2-properties/06-entryoverprint.md) | Represents the "Overprint" entry of the version 2. |
| [EntryInks](2-properties/07-entryinks.md) | Represents the "Inks" entry of the version 2. |
| [EntryIncludedImageDimensions](2-properties/08-entryincludedimagedimensions.md) | Represents the "IncludedImageDimensions" entry of the version 2. |
| [EntryIncludedImageQuality](2-properties/09-entryincludedimagequality.md) | Represents the "IncludedImageQuality" entry of the version 2. |
|  | [inherited properties...](../1647-opielement/index.md) |
