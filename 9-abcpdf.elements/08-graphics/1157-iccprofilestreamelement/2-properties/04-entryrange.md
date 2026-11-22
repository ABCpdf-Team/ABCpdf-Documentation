# EntryRange Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Range" entry of the icc profile stream dictionary object. |

## Notes

Represents the "Range" entry of the icc profile stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 66, page 150.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=158)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 65, page 188.](https://www.iso.org/standard/63534.html)

The Range array gives the valid minimum and maximum values for each of the N color components. It contains 2N numbers arranged as min/max pairs, one pair per component.

When absent, all components are assumed to have a range of 0 to 1. Profiles that use different input encodings require explicit Range values to communicate the actual domain to the conforming reader.
