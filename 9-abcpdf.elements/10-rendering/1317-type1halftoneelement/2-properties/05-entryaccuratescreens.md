# EntryAccurateScreens Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "AccurateScreens" entry of the type 1 halftone dictionary object. |

## Notes

Represents the "AccurateScreens" entry of the type 1 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 130, page 309.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=317)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 128, page 371.](https://www.iso.org/standard/63534.html)

When this entry is absent or false, the viewer snaps Frequency and Angle to the closest values that map cleanly to the device pixel grid. This is fast and works well for most output. The deviation from the requested values is usually small.

When true, the viewer attempts to preserve the exact values. This can significantly increase the time needed to build the halftone cell and may not be possible on all devices. A viewer that cannot comply is permitted to fall back to the snapped values.
