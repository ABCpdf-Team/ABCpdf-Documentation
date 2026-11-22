# EntryIC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "IC" entry of the circle annotation object. |

## Notes

Represents the "IC" entry of the circle annotation object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0 and a maximum of 1.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 177, page 402.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=410)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 180, page 487.](https://www.iso.org/standard/63534.html)

The interior colour fills the inside of the ellipse. When absent the interior is transparent.
