# EntryL Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "L" entry of the line annotation object. |

## Notes

Represents the "L" entry of the line annotation object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 175, page 398.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=406)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 178, page 482.](https://www.iso.org/standard/63534.html)

The array holds four numbers: the x and y coordinates of the start point followed by the x and y coordinates of the end point, all in default user space on the annotation's page.
