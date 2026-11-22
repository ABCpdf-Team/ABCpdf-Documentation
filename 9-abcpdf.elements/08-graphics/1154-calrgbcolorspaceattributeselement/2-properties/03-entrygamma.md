# EntryGamma Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Gamma" entry of the calrgb colour space dictionary object. |

## Notes

Represents the "Gamma" entry of the calrgb colour space dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 64, page 146.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=154)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 63, page 184.](https://www.iso.org/standard/63534.html)

The gamma array holds three exponent values, one per channel. Each encoded RGB component is raised to its corresponding gamma before being multiplied by the matrix. This linearises the channel values so that the matrix multiplication operates on linear light.

Common display encodings use a gamma near 2.2. Setting the gamma array to match the actual encoding of the content ensures accurate colorimetric conversion.
