# EntryL Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "L" entry of the software identifier dictionary object. |

## Notes

Represents the "L" entry of the software identifier dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

Items in this array should have a minimum value of 0.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 292, page 504.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=512)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 303, page 631.](https://www.iso.org/standard/63534.html)

The L entry holds the minimum acceptable version as an array of non-negative integers listing version components from most to least significant, such as \[2, 0, 0\] for version 2.0.0.
