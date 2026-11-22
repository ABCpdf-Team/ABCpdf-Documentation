# EntryHI Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "HI" entry of the software identifier dictionary object. |

## Notes

Represents the "HI" entry of the software identifier dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 292, page 504.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=512)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 303, page 631.](https://www.iso.org/standard/63534.html)

The HI entry, when true, makes the upper version bound inclusive: the maximum version itself is acceptable. When false, only versions strictly below the maximum are acceptable.
