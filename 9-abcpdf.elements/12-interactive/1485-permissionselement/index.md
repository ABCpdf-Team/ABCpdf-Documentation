# PermissionsElement Class

This class represents the permissions dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 258, page 477.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=485)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 263, page 589.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.PermissionsElement`

A permissions dictionary records the certification and usage-rights signatures governing what operations may be performed on the document. Only one certification signature (DocMDP) may be present. UR3 references a current usage rights signature; UR references the deprecated equivalent.

## Methods

| Method | Description |
| --- | --- |
| [PermissionsElement](1-methods/01-permissionselement.md) | Create a new PermissionsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryDocMDP](2-properties/01-entrydocmdp.md) | Represents the "DocMDP" entry of the permissions dictionary object. |
| [EntryUR](2-properties/02-entryur.md) | Represents the "UR" entry of the permissions dictionary object. |
| [EntryUR3](2-properties/03-entryur3.md) | Represents the "UR3" entry of the permissions dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
