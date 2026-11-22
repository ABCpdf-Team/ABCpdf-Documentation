# D3DAnnotationExternalDataElement Class

This class represents the external data dictionary used to markup 3D annotations. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 313, page 543.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=551)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 324, page 675.](https://www.iso.org/standard/63534.html)

A 3D annotation external data dictionary references 3D annotation data stored in a separate file rather than embedded in the PDF. It carries the 3D stream reference and the default view identifier for use when loading the external data.

The 3DA entry holds an indirect reference to the 3D stream. The 3DV entry identifies the default view. The MD5 entry holds a 16-byte MD5 digest of the external data file, allowing a reader to verify the file is intact.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ExternalDataElement`](../../12-interactive/1399-externaldataelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.D3DAnnotationExternalDataElement`

## Methods

| Method | Description |
| --- | --- |
| [D3DAnnotationExternalDataElement](1-methods/01-d3dannotationexternaldataelement.md) | Create a new D3DAnnotationExternalDataElement. |
|  | [inherited methods...](../../12-interactive/1399-externaldataelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Entry3DA](2-properties/01-entry3da.md) | Represents the "3DA" entry of the external data dictionary used to markup 3d annotations object. |
| [Entry3DV](2-properties/02-entry3dv.md) | Represents the "3DV" entry of the external data dictionary used to markup 3d annotations object. |
| [EntryMD5](2-properties/03-entrymd5.md) | Represents the "MD5" entry of the external data dictionary used to markup 3d annotations object. |
|  | [inherited properties...](../../12-interactive/1399-externaldataelement/index.md) |
