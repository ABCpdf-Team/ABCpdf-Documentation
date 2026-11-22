# EntryViews Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`D3DViewElement`](../../../13-multimedia/1529-d3dviewelement/index.md)`>` | null | No | Represents the "Views" entry of the richmediacontent dictionary object. |

## Notes

Represents the "Views" entry of the richmediacontent dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains [D3DViewElements](../../../13-multimedia/1529-d3dviewelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51, page 86.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=86)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 341, page 704.](https://www.iso.org/standard/63534.html)

The views array lists stored view or viewpoint state dictionaries for the media, corresponding to the view selector entries in activation dictionaries.
