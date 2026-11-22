# EntryDecode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Decode" entry of the image dictionary object. |

## Notes

Represents the "Decode" entry of the image dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 207.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=215)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 256.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=357)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.](https://www.iso.org/standard/63534.html)

The Decode array remaps encoded sample values to the component ranges of the color space. Each pair of values maps the minimum and maximum encoded values to the minimum and maximum decoded values for one component.

The default Decode for most color spaces maps 0 to the component minimum and the maximum sample value to the component maximum. Reversing the pair for a one-bit image mask is equivalent to inverting the mask.
