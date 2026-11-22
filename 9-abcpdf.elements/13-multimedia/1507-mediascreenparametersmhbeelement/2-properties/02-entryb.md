# EntryB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "B" entry of the media screen parameters mh/be dictionary object. |

## Notes

Represents the "B" entry of the media screen parameters mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0 and a maximum of 1.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 283, page 499.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=507)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 294, page 625.](https://www.iso.org/standard/63534.html)

The B entry holds the background colour of the media window as an array of colour component values. The colour fills any area not covered by the media content.
