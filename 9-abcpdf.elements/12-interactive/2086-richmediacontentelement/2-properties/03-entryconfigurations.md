# EntryConfigurations Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`RichMediaConfigElement`](../../2088-richmediaconfigelement/index.md)`>` | null | No | Represents the "Configurations" entry of the richmediacontent dictionary object. |

## Notes

Represents the "Configurations" entry of the richmediacontent dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains [RichMediaConfigElements](../../2088-richmediaconfigelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51, page 86.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=86)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 341, page 704.](https://www.iso.org/standard/63534.html)

The configurations array lists rich media configuration dictionaries. Each configuration groups a set of instances and a media subtype for one complete playable experience.
