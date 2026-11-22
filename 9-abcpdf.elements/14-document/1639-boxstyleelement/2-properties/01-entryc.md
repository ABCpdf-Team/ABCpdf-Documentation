# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "C" entry of the box style dictionary object. |

## Notes

Represents the "C" entry of the box style dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0 and a maximum of 1.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 361, page 631.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=639)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 397, page 811.](https://www.iso.org/standard/63534.html)

The C entry holds the guide line color as a three-element DeviceRGB array.
