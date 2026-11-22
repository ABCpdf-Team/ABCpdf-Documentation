# SignatureReferenceElement Class

This class represents the signature reference dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 253, page 469.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=477)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 256, page 568.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SignatureReferenceElement`

A signature reference dictionary describes a transform applied to document content before hashing. The TransformMethod entry names the transform type (DocMDP, UR, FieldMDP, or Identity). TransformParams holds type-specific configuration. The DigestMethod entry names the hash algorithm.

## Methods

| Method | Description |
| --- | --- |
| [SignatureReferenceElement](1-methods/01-signaturereferenceelement.md) | Create a new SignatureReferenceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the signature reference dictionary object. |
| [EntryTransformMethod](2-properties/02-entrytransformmethod.md) | Represents the "TransformMethod" entry of the signature reference dictionary object. |
| [EntryTransformParams](2-properties/03-entrytransformparams.md) | Represents the "TransformParams" entry of the signature reference dictionary object. |
| [EntryData](2-properties/04-entrydata.md) | Represents the "Data" entry of the signature reference dictionary object. |
| [EntryDigestMethod](2-properties/05-entrydigestmethod.md) | Represents the "DigestMethod" entry of the signature reference dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
