# EntryMN Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "MN" entry of the printer's mark annotation object. |

## Notes

Represents the "MN" entry of the printer's mark annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 362, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 398, page 812.](https://www.iso.org/standard/63534.html)

The MN entry holds a name identifying the type of printer mark. Prepress tools use this to locate specific marks by name without analysing their appearance streams.
