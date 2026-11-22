# EntryInstances Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`RichMediaInstanceElement`](../../2089-richmediainstanceelement/index.md)`>` | null | No | Represents the "Instances" entry of the richmediaconfiguration dictionary object. |

## Notes

Represents the "Instances" entry of the richmediaconfiguration dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains [RichMediaInstanceElements](../../2089-richmediainstanceelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51a, page 88.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=88)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 342, page 706.](https://www.iso.org/standard/63534.html)

The instances array lists rich media instance dictionaries. Each instance pairs one asset with its playback parameters.
