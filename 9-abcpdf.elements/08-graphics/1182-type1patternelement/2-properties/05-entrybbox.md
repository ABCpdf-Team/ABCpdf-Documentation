# EntryBBox Property

## Notes

Represents the "BBox" entry of the type 1 pattern dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a RectangleElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 75, page 175.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 74, page 218.

The BBox rectangle clips the pattern cell in pattern coordinate space. Content outside the box is not painted. The box also determines the area that is replicated during tiling.

If the BBox is smaller than the step rectangle defined by XStep and YStep, the excess area between tiles is left unpainted, creating a gap between the pattern repetitions.
