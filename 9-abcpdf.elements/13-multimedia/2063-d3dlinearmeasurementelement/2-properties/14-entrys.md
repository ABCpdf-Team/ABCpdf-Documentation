# EntryS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ProjectionAnnotationElement`](../../../12-interactive/2039-projectionannotationelement/index.md) | null | No | Represents the "S" entry of the 3d linear dimension measurement object. |

## Notes

Represents the "S" entry of the 3d linear dimension measurement object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [ProjectionAnnotationElement](../../../12-interactive/2039-projectionannotationelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39b, page 63.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=63)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 327, page 685.](https://www.iso.org/standard/63534.html)

The S entry holds the scale factor applied to the measurement value before display, allowing the displayed value to represent a different scale than the model coordinates.
