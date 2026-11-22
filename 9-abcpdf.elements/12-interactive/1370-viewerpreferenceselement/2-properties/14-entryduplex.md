# EntryDuplex Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Duplex" entry of the viewer preferences dictionary object. |

## Notes

Represents the "Duplex" entry of the viewer preferences dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- Simplex
- DuplexFlipShortEdge
- DuplexFlipLongEdge

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 150, page 364.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=372)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.1, page 28.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 147, page 437.](https://www.iso.org/standard/63534.html)

Advises the printer driver on duplex printing. Simplex prints one side per sheet; DuplexFlipShortEdge and DuplexFlipLongEdge request two-sided printing with the sheet flipped along the short or long edge respectively.
