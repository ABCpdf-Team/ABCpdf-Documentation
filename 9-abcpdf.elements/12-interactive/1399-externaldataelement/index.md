# ExternalDataElement Class

This class represents the external data dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 170, page 391.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=399)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 332, page 695.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 173, page 477.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.21, page 38.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=38)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39g, page 76.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=76)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ExternalDataElement`  
`          ` [`WebSupergoo.ABCpdf14.Elements.D3DAnnotationExternalDataElement`](../../13-multimedia/1551-d3dannotationexternaldataelement/index.md)

An external data dictionary stores a reference to a 3D artwork resource for a 3D annotation, separating the annotation dictionary from the heavyweight 3D stream.

The Subtype entry identifies the kind of external data. In current use only 3D data is defined as a subtype.

## Methods

| Method | Description |
| --- | --- |
| [ExternalDataElement](1-methods/01-externaldataelement.md) | Create a new ExternalDataElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the external data dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the external data dictionary object. |
| [EntryM3DREF](2-properties/03-entrym3dref.md) | Represents the "M3DREF" entry of the external data dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
