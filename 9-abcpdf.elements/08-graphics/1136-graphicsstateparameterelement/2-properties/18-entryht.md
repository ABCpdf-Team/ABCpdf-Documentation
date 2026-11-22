# EntryHT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "HT" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "HT" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

If provided, this item must always take the value "Default".

2\) An [HalftoneElement](../../../10-rendering/1316-halftoneelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=137)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.](https://www.iso.org/standard/63534.html)

The halftone entry specifies the halftone screen to use when converting continuous-tone component values to binary dots for output on a halftone device. It may be a halftone dictionary, a halftone stream, or the name Default.

A halftone dictionary may define a single screen applied to all components or separate screens for each colorant. The screen parameters include frequency, angle, and a spot function that determines dot shape.

The halftone affects only those output devices that produce halftone output, such as laser printers and platesetters. Devices that handle continuous tone directly ignore this entry.
