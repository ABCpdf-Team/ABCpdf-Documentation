# EntryHalftoneName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "HalftoneName" entry of the type 1 halftone dictionary object. |

## Notes

Represents the "HalftoneName" entry of the type 1 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 130, page 309.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=317)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 128, page 371.](https://www.iso.org/standard/63534.html)

Although the property type is a string, the underlying PDF object is a string of raw bytes rather than a human-readable text string. The bytes can take any value and do not represent encoded characters.

Some output devices use this value to match the halftone against a built-in screen stored in the device. When a match is found, the device may apply its own internal data instead of the Frequency, Angle, and SpotFunction values in the dictionary.
