# EntryR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`RenditionElement`](../../1497-renditionelement/index.md)`>` | null | No | Represents the "R" entry of the selector rendition dictionary object. |

## Notes

Represents the "R" entry of the selector rendition dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [RenditionElements](../../1497-renditionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 272, page 492.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=500)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 283, page 616.](https://www.iso.org/standard/63534.html)

The R entry holds an array of rendition dictionaries to evaluate in order. A conforming reader tests the criteria of each candidate in sequence and activates the first one whose criteria are all satisfied.
