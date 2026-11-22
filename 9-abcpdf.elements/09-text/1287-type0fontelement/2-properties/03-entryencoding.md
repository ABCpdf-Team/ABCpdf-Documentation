# EntryEncoding Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Encoding" entry of the type 0 font dictionary object. |

## Notes

Represents the "Encoding" entry of the type 0 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

2\) A [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 121, page 279.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=287)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 119, page 338.](https://www.iso.org/standard/63534.html)

This entry names the CMap used to convert character codes in text strings to CIDs. Predefined CMap names such as Identity-H, Identity-V, or locale-specific names like UniJIS-UTF16-H are common choices.

When the value is a stream reference, the CMap program in the stream body defines the mapping. The stream's CIDSystemInfo must be compatible with that of the CIDFont descendant.
