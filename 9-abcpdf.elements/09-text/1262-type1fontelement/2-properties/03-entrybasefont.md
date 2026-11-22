# EntryBaseFont Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "BaseFont" entry of the type 1 font dictionary object. |

## Notes

Represents the "BaseFont" entry of the type 1 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 254.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=262)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 310.](https://www.iso.org/standard/63534.html)

For the 14 standard Type1 fonts this value is one of the well-known names such as Helvetica, Times-Roman, or Courier. For other fonts it is the PostScript name of the font, which may include a subset tag prefix of the form ABCDEF+PostScriptName when the font is embedded as a subset.

Viewers use this name to locate the font in the system or embedded resources. If the font is not embedded and the name does not match a standard font, the viewer may substitute a similar font.
