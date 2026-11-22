# ParameterElement Class

This class represents the parameter dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 22.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=30)

Parameter dictionaries carry decode parameters for stream filters. Each filter that requires configuration has a corresponding parameter dictionary type. The parameter dictionary is referenced from the stream's DecodeParms entry.

When a stream uses multiple filters, the DecodeParms entry holds an array with one parameter dictionary per filter in the same order as the Filter array. A null entry in the array means the corresponding filter takes no parameters.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ParameterElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.CcittParametersElement`](../1038-ccittparameterselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.CryptParametersElement`](../1046-cryptparameterselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.DctParametersElement`](../1043-dctparameterselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.FlateParametersElement`](../1035-flateparameterselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Jbig2ParametersElement`](../1040-jbig2parameterselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.LzwParametersElement`](../1035-lzwparameterselement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [ParameterElement](1-methods/01-parameterelement.md) | Create a new ParameterElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| :---: | --- |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
