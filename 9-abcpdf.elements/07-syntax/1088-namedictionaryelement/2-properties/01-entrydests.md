# EntryDests Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NameTreeNodeElement`](../../1097-nametreenodeelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Dests" entry of the name dictionary object. |

## Notes

Represents the "Dests" entry of the name dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a [NameTreeNodeElement](../../1097-nametreenodeelement_t_/index.md) containing [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 31, page 80.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=88)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.28, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 32, page 108.](https://www.iso.org/standard/63534.html)

The Dests entry references the root of a name tree mapping destination names to destination arrays or dictionaries. Named destinations allow links and bookmarks to reference page locations by name, supporting cross-document linking and dynamic navigation.
