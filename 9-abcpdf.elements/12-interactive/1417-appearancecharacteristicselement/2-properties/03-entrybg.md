# EntryBG Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "BG" entry of the appearance characteristics dictionary object. |

## Notes

Represents the "BG" entry of the appearance characteristics dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0 and a maximum of 1.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 189, page 409.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=417)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 192, page 496.](https://www.iso.org/standard/63534.html)

The background colour fills the interior of the widget. When absent the background is transparent in auto-generated appearances.
