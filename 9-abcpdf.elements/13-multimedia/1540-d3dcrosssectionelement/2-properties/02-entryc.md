# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "C" entry of the 3d cross section dictionary object. |

## Notes

Represents the "C" entry of the 3d cross section dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 311, page 532.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=540)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 322, page 665.](https://www.iso.org/standard/63534.html)

The C entry holds a three-element array specifying the centre point of the cutting plane in model coordinates. The plane passes through this point.
