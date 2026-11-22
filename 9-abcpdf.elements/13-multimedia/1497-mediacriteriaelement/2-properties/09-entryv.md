# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`SoftwareIdentifierElement`](../../1512-softwareidentifierelement/index.md)`>` | null | No | Represents the "V" entry of the media criteria dictionary object. |

## Notes

Represents the "V" entry of the media criteria dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [SoftwareIdentifierElements](../../1512-softwareidentifierelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 268, page 490.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=498)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 279, page 614.](https://www.iso.org/standard/63534.html)

The V entry holds an array of software identifier dictionaries listing the media players that are acceptable for this rendition. The rendition is selected only if one of the listed players is available.
