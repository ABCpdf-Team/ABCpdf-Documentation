# EntryDamagedRowsBeforeError Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "DamagedRowsBeforeError" entry of the ccittfax parameters object. |

## Notes

Represents the "DamagedRowsBeforeError" entry of the ccittfax parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 11, page 31.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=39)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 11, page 44.](https://www.iso.org/standard/63534.html)

The DamagedRowsBeforeError entry gives the number of damaged scan lines a decoder may tolerate before treating the stream as an error. This supports recovery from transmission errors in legacy fax data stored in PDF.
