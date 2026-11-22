# EntryOrdering Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Ordering" entry of the cidsysteminfo dictionary object. |

## Notes

Represents the "Ordering" entry of the cidsysteminfo dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 116, page 269.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=277)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 114, page 326.](https://www.iso.org/standard/63534.html)

This string names the specific character set within the registry. Examples of Adobe-defined orderings are Japan1 for Japanese, GB1 for simplified Chinese, CNS1 for traditional Chinese, and Korea1 for Korean.

When pairing a CIDFont with a CMap, the Ordering values must match exactly.
