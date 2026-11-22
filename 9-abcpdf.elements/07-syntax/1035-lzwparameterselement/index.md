# LzwParametersElement Class

This class represents the lzw parameters. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 8, page 27.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=35)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 8, page 40.](https://www.iso.org/standard/63534.html)

The LZW decode parameters dictionary configures the LZWDecode filter. LZW compression is a dictionary-based algorithm that replaces repeated byte sequences with shorter codes.

The EarlyChange entry controls when the encoder switches to the next code length. A value of 1 means the switch occurs one code earlier than the standard LZW algorithm. A value of 0 follows the standard. The decoder must match the encoder's setting.

LZWDecode supports the same Predictor, Colors, BitsPerComponent, and Columns entries as FlateDecode, with the same semantics. PDF 2.0 deprecates LZWDecode for new content in favour of FlateDecode.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ParameterElement`](../0012-parameterelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.LzwParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [LzwParametersElement](1-methods/01-lzwparameterselement.md) | Create a new LzwParametersElement. |
|  | [inherited methods...](../0012-parameterelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryPredictor](2-properties/01-entrypredictor.md) | Represents the "Predictor" entry of the lzw parameters object. |
| [EntryColors](2-properties/02-entrycolors.md) | Represents the "Colors" entry of the lzw parameters object. |
| [EntryBitsPerComponent](2-properties/03-entrybitspercomponent.md) | Represents the "BitsPerComponent" entry of the lzw parameters object. |
| [EntryColumns](2-properties/04-entrycolumns.md) | Represents the "Columns" entry of the lzw parameters object. |
| [EntryEarlyChange](2-properties/05-entryearlychange.md) | Represents the "EarlyChange" entry of the lzw parameters object. |
|  | [inherited properties...](../0012-parameterelement/index.md) |
