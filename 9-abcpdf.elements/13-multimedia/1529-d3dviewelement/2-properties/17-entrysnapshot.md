# EntrySnapshot Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ImageXObjectElement`](../../../08-graphics/1214-imagexobjectelement/index.md) | null | No | Represents the "Snapshot" entry of the 3d view dictionary object. |

## Notes

Represents the "Snapshot" entry of the 3d view dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an [ImageXObjectElement](../../../08-graphics/1214-imagexobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 304, page 521.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=529)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39, page 57.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=57)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 344, page 707.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51f, page 93.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=93)

The Snapshot entry references an image XObject providing a pre-rendered 2D snapshot of this view. The snapshot is displayed when the 3D runtime is unavailable, providing a static representation of the model.
