# FlateParametersElement Class

This class represents the flate parameters. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 8, page 27.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=35)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 8, page 40.](https://www.iso.org/standard/63534.html)

The Flate decode parameters dictionary configures the FlateDecode filter, which uses the zlib/deflate compression algorithm. FlateDecode is the standard general-purpose compression filter in PDF 1.2 and later.

The Predictor entry enables a pre-compression transformation that can significantly improve the compression ratio for certain data types, particularly image data with horizontal correlation between adjacent samples.

Predictor value 1 means no prediction. Values 2 through 15 select TIFF predictors; value 2 is the only TIFF predictor commonly used. Values 10 through 15 select PNG predictors, with 12 (PNG Up) and 15 (PNG Optimum) being the most effective for general data.

When a predictor is used, the Colors, BitsPerComponent, and Columns entries describe the sample structure of the data so the predictor can operate correctly row by row.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ParameterElement`](../0012-parameterelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.FlateParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [FlateParametersElement](1-methods/01-flateparameterselement.md) | Create a new FlateParametersElement. |
|  | [inherited methods...](../0012-parameterelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryPredictor](2-properties/01-entrypredictor.md) | Represents the "Predictor" entry of the flate parameters object. |
| [EntryColors](2-properties/02-entrycolors.md) | Represents the "Colors" entry of the flate parameters object. |
| [EntryBitsPerComponent](2-properties/03-entrybitspercomponent.md) | Represents the "BitsPerComponent" entry of the flate parameters object. |
| [EntryColumns](2-properties/04-entrycolumns.md) | Represents the "Columns" entry of the flate parameters object. |
|  | [inherited properties...](../0012-parameterelement/index.md) |
