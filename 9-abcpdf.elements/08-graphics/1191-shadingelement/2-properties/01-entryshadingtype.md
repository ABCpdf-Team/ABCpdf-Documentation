# EntryShadingType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "ShadingType" entry of the shading dictionary object. |

## Notes

Represents the "ShadingType" entry of the shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

This item may take one of the following valid values:.

- 1
- 2
- 3
- 4
- 5
- 6
- 7

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 78, page 183.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=191)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 77, page 227.](https://www.iso.org/standard/63534.html)

The ShadingType integer selects the gradient algorithm: 1 for function-based (arbitrary 2D function), 2 for axial (linear gradient), 3 for radial (circular gradient), 4 for free-form Gouraud triangle mesh, 5 for lattice-form Gouraud mesh, 6 for Coons patch mesh, and 7 for tensor-product patch mesh.

Each type has its own set of additional required and optional entries. The ShadingType value determines which set applies.
