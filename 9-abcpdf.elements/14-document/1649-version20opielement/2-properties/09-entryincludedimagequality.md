# EntryIncludedImageQuality Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "IncludedImageQuality" entry of the version 2. |

## Notes

Represents the "IncludedImageQuality" entry of the version 2.0 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 1 and a maximum of 3.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 642.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=650)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 827.](https://www.iso.org/standard/63534.html)

The IncludedImageQuality entry records the proxy quality level: 1 for low quality (position only), 2 for medium, and 3 for high quality.
