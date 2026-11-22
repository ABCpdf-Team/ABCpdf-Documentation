# EntryIT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "IT" entry of the rubber stamp annotation object. |

## Notes

Represents the "IT" entry of the rubber stamp annotation object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Stamp" if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 181, page 405.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=413)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 184, page 491.](https://www.iso.org/standard/63534.html)

The intent type may further classify the stamp, for example distinguishing a review-workflow stamp from a signing-ceremony stamp.
