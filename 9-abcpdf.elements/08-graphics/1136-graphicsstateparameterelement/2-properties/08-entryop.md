# EntryOP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "OP" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "OP" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=137)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.](https://www.iso.org/standard/63534.html)

The OP flag controls overprinting for stroking operations. When true, stroked marks do not erase underlying colorants; instead they are added on top. When false, the stroke first clears the underlying colorants in the mark's area.

Overprint behaviour is output-device-dependent. It primarily affects separations-based printing workflows where different inks are applied to the same area.
