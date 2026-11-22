# EntryLW Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "LW" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "LW" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=136)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.](https://www.iso.org/standard/63534.html)

The line width controls the thickness of stroked paths, measured in user space units. A value of zero produces the thinnest line the device can render, which may vary between output devices.

The line width applies to all stroke operations that follow until it is changed again. It is part of the current graphics state and affects both straight and curved path segments equally.
