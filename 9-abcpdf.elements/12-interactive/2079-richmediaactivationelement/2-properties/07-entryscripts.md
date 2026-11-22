# EntryScripts Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md)`>` | null | No | Represents the "Scripts" entry of the richmediaactivation dictionary object. |

## Notes

Represents the "Scripts" entry of the richmediaactivation dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains [FileSpecificationElements](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.50a, page 79.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=79)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 335, page 698.](https://www.iso.org/standard/63534.html)

The scripts array lists strings executed as JavaScript when the media activates, with access to the media player API for initialisation.
