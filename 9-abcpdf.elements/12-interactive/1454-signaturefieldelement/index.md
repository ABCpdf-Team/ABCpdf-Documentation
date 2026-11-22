# SignatureFieldElement Class

This class represents the signature field. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 232, page 446.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=454)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 235, page 540.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FieldElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FieldElement`](../1440-fieldelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.SignatureFieldElement`

A signature field holds a digital signature dictionary once signed, and before signing holds the lock and seed value dictionaries controlling how it may be signed.

The Lock entry specifies which fields are locked once this field is signed. The SV entry pre-configures the signing dialog by restricting or suggesting the filter, digest algorithm, certificate requirements, and appearance.

## Methods

| Method | Description |
| --- | --- |
| [SignatureFieldElement](1-methods/01-signaturefieldelement.md) | Create a new SignatureFieldElement. |
|  | [inherited methods...](../1440-fieldelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryLock](2-properties/01-entrylock.md) | Represents the "Lock" entry of the signature field object. |
| [EntrySV](2-properties/02-entrysv.md) | Represents the "SV" entry of the signature field object. |
|  | [inherited properties...](../1440-fieldelement/index.md) |
