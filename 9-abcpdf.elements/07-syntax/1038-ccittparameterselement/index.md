# CcittParametersElement Class

This class represents the ccittfax parameters. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 11, page 30.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=38)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 11, page 43.](https://www.iso.org/standard/63534.html)

The CCITT decode parameters dictionary configures the CCITTFaxDecode filter, which implements the CCITT facsimile compression algorithms used for bi-level (black and white) image data.

The K entry selects the encoding scheme: a negative value uses Group 4 (two-dimensional), zero uses Group 3 one-dimensional, and a positive value uses mixed Group 3 encoding where the value limits the number of consecutive two-dimensional rows.

Group 4 encoding is generally more compact than Group 3 and is the most common choice for scanned document images. Group 3 encoding with K of 0 is compatible with older fax equipment.

The Columns and Rows entries define the image dimensions. The EndOfBlock entry controls whether an end-of-facsimile-block code terminates the data. The BlackIs1 entry controls the polarity of the image.

The DamagedRowsBeforeError entry allows a decoder to tolerate a limited number of corrupted scan lines before treating the stream as an error. This supports recovery from transmission errors in legacy fax data.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ParameterElement`](../0012-parameterelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.CcittParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [CcittParametersElement](1-methods/01-ccittparameterselement.md) | Create a new CcittParametersElement. |
|  | [inherited methods...](../0012-parameterelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryK](2-properties/01-entryk.md) | Represents the "K" entry of the ccittfax parameters object. |
| [EntryEndOfLine](2-properties/02-entryendofline.md) | Represents the "EndOfLine" entry of the ccittfax parameters object. |
| [EntryEncodedByteAlign](2-properties/03-entryencodedbytealign.md) | Represents the "EncodedByteAlign" entry of the ccittfax parameters object. |
| [EntryColumns](2-properties/04-entrycolumns.md) | Represents the "Columns" entry of the ccittfax parameters object. |
| [EntryRows](2-properties/05-entryrows.md) | Represents the "Rows" entry of the ccittfax parameters object. |
| [EntryEndOfBlock](2-properties/06-entryendofblock.md) | Represents the "EndOfBlock" entry of the ccittfax parameters object. |
| [EntryBlackIs1](2-properties/07-entryblackis1.md) | Represents the "BlackIs1" entry of the ccittfax parameters object. |
| [EntryDamagedRowsBeforeError](2-properties/08-entrydamagedrowsbeforeerror.md) | Represents the "DamagedRowsBeforeError" entry of the ccittfax parameters object. |
|  | [inherited properties...](../0012-parameterelement/index.md) |
