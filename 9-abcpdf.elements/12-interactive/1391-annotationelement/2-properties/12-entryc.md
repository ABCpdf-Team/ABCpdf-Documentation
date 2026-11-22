# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "C" entry of the annotation dictionary object. |

## Notes

Represents the "C" entry of the annotation dictionary object.

It is an optional entry defined as part of the PDF 1.1 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0 and a maximum of 1.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 164, page 384.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=392)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 166, page 465.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

The colour array components are interpreted in a device colour space: grey (1 component), RGB (3 components), or CMYK (4 components). Used for the annotation border and, for some subtypes, as background or icon colour.
