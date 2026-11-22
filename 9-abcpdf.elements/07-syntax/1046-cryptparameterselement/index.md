# CryptParametersElement Class

This class represents the crypt parameters. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 14, page 38.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=46)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 14, page 52.](https://www.iso.org/standard/63534.html)

The Crypt decode parameters dictionary configures the Crypt filter, which applies document-level encryption to individual streams. This allows different streams in the same document to use different encryption handlers.

The Name entry identifies the crypt filter to apply. The name is looked up in the document's encryption dictionary under the CF entry. The special name Identity means the stream data is passed through without encryption or decryption.

Crypt filters give a document the ability to exempt certain streams from encryption, for example metadata streams that must remain accessible without decrypting the document.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ParameterElement`](../0012-parameterelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.CryptParametersElement`

## Methods

| Method | Description |
| --- | --- |
| [CryptParametersElement](1-methods/01-cryptparameterselement.md) | Create a new CryptParametersElement. |
|  | [inherited methods...](../0012-parameterelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the crypt parameters object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the crypt parameters object. |
|  | [inherited properties...](../0012-parameterelement/index.md) |
