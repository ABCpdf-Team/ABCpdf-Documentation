# EntryBlackPoint Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "BlackPoint" entry of the calrgb colour space dictionary object. |

## Notes

Represents the "BlackPoint" entry of the calrgb colour space dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 64, page 146.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=154)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 63, page 184.](https://www.iso.org/standard/63534.html)

The black point gives the XYZ values of the darkest reproducible colour in this space. When absent, (0, 0, 0) is assumed, corresponding to a component triple of (0, 0, 0) producing zero light output.
