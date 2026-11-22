# EntryResources Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NameTreeNodeElement`](../../../07-syntax/1097-nametreenodeelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Resources" entry of the 3d stream dictionary object. |

## Notes

Represents the "Resources" entry of the 3d stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [NameTreeNodeElement](../../../07-syntax/1097-nametreenodeelement_t_/index.md) containing [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 300, page 516.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=524)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.35, page 56.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=56)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 311, page 645.](https://www.iso.org/standard/63534.html)

The Resources entry holds a resources dictionary for assets referenced by the 3D stream, such as texture images and auxiliary data files needed by the model.
