# EntryStrings Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NameTreeNodeElement`](../../../07-syntax/1097-nametreenodeelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Strings" entry of the navigator dictionary object. |

## Notes

Represents the "Strings" entry of the navigator dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [NameTreeNodeElement](../../../07-syntax/1097-nametreenodeelement_t_/index.md) containing strings, representing PDF string objects.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6d, page 34.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=34)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 160, page 454.](https://www.iso.org/standard/63534.html)

The strings dictionary maps string keys to localised text values used by the navigator component. The locale entry identifies which language these strings apply to.
