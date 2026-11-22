# EntryT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`TargetElement`](../index.md) | null | No | Represents the "T" entry of the target dictionary object. |

## Notes

Represents the "T" entry of the target dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [TargetElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 202, page 420.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=428)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 205, page 510.](https://www.iso.org/standard/63534.html)

The nested target dictionary extends the traversal to the next level of the embedding hierarchy, allowing navigation through multiple levels of file embedding in one step.
