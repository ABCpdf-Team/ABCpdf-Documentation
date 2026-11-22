# EntryWidth Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Width" entry of the image dictionary object. |

## Notes

Represents the "Width" entry of the image dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 206.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=214)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 255.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=357)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.](https://www.iso.org/standard/63534.html)

Width gives the number of samples across one row of the image. Combined with Height and BitsPerComponent, it determines the total amount of sample data in the image stream before any compression is applied.
