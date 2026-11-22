# DctParametersElement Class

This class represents the dct parameters. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 13, page 35.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=43)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 13, page 48.](https://www.iso.org/standard/63534.html)

The DCT decode parameters dictionary configures the DCTDecode filter, which implements JPEG lossy compression for continuous-tone image data.

The ColorTransform entry controls the color space transformation applied before or after JPEG encoding. A value of 0 means no transformation is applied. A value of 1 applies an RGB-to-YCbCr transformation for three-component images, or a CMYK-to-YCCK transformation for four-component images.

Most JPEG images embedded in PDFs do not require an explicit DCT parameter dictionary because the JPEG data stream itself carries the necessary metadata. The parameter dictionary is needed only when the default color transform behaviour must be overridden.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ParameterElement`](../0012-parameterelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.DctParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [DctParametersElement](1-methods/01-dctparameterselement.md) | Create a new DctParametersElement. |
|  | [inherited methods...](../0012-parameterelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryColorTransform](2-properties/01-entrycolortransform.md) | Represents the "ColorTransform" entry of the dct parameters object. |
|  | [inherited properties...](../0012-parameterelement/index.md) |
