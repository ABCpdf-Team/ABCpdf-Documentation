# EntryAIS Property

## Notes

Represents the "AIS" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 130.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 164.

The alpha-is-shape flag affects how the transparency model treats the alpha channel. When true, alpha is interpreted as a shape value that defines where paint is applied, and the constant alpha provides opacity within that shape. When false, alpha is treated directly as opacity.

This distinction matters for soft masks and when computing compositing formulas. Most general-purpose rendering uses AIS false; AIS true is relevant in specific compositing workflows where shape and opacity are logically separate.
