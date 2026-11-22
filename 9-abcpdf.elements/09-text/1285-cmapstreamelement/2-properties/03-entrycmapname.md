# EntryCMapName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "CMapName" entry of the cmap stream dictionary object. |

## Notes

Represents the "CMapName" entry of the cmap stream dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 120, page 277.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=285)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 118, page 336.](https://www.iso.org/standard/63534.html)

This name appears both here in the stream dictionary and inside the CMap program body in the stream itself. The two should match.

Predefined CMap names follow a pattern of character set and writing direction, such as Adobe-Japan1-UCS2 or UniGB-UTF16-H. The H suffix denotes horizontal writing and V denotes vertical.
