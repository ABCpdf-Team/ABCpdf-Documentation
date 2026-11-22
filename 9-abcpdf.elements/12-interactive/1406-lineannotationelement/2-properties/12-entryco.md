# EntryCO Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "CO" entry of the line annotation object. |

## Notes

Represents the "CO" entry of the line annotation object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a positive value.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 175, page 399.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=407)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 178, page 484.](https://www.iso.org/standard/63534.html)

The caption offset is a two-element array giving the horizontal and vertical offset in points from the default caption position, allowing the caption to be nudged for legibility.
