# EntryO Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FormXObjectElement`](../../../08-graphics/1226-formxobjectelement/index.md) | null | No | Represents the "O" entry of the 3d view dictionary object. |

## Notes

Represents the "O" entry of the 3d view dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [FormXObjectElement](../../../08-graphics/1226-formxobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 304, page 522.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=530)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39, page 57.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=57)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 344, page 707.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51f, page 93.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=93)

The O entry holds a three-element array specifying the centre of orbit in world coordinates. The viewer orbits around this point when the user rotates the model.
