# EntryAssets Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NameTreeNodeElement`](../../../07-syntax/1097-nametreenodeelement_t_/index.md)`<`[`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md)`>` | null | No | Represents the "Assets" entry of the richmediacontent dictionary object. |

## Notes

Represents the "Assets" entry of the richmediacontent dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [NameTreeNodeElement](../../../07-syntax/1097-nametreenodeelement_t_/index.md) containing [FileSpecificationElements](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51, page 86.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=86)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 341, page 704.](https://www.iso.org/standard/63534.html)

The Assets entry is a name tree mapping asset names to file specifications. Each file specification references one embedded media file; configurations and instances reference these assets by their name keys.
