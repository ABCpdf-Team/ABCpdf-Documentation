# EntrySubtype Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Subtype" entry of the render mode dictionary object. |

## Notes

Represents the "Subtype" entry of the render mode dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- Solid
- SolidWireframe
- Transparent
- TransparentWireframe
- BoundingBox
- TransparentBoundingBox
- TransparentBoundingBoxOutline
- Wireframe
- ShadedWireframe
- HiddenWireframe
- Vertices
- ShadedVertices
- Illustration
- SolidOutline
- ShadedIllustration

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 307, page 527.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=535)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 318, page 659.](https://www.iso.org/standard/63534.html)
