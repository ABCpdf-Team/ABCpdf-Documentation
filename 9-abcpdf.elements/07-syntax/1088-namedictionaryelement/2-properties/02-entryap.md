# EntryAP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NameTreeNodeElement`](../../1097-nametreenodeelement_t_/index.md)`<`[`FormXObjectElement`](../../../08-graphics/1226-formxobjectelement/index.md)`>` | null | No | Represents the "AP" entry of the name dictionary object. |

## Notes

Represents the "AP" entry of the name dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a [NameTreeNodeElement](../../1097-nametreenodeelement_t_/index.md) containing [FormXObjectElements](../../../08-graphics/1226-formxobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 31, page 80.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=88)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.28, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 32, page 108.](https://www.iso.org/standard/63534.html)

The AP entry references the root of a name tree mapping names to annotation appearance streams. Named appearances allow annotations across the document to share appearance definitions.
