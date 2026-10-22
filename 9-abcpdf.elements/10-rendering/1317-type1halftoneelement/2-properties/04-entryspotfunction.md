# EntrySpotFunction Property

## Notes

Represents the "SpotFunction" entry of the type 1 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A string representing a PDF name object.

This item may take one of the following valid values:.

SimpleDotInvertedSimpleDotDoubleDotInvertedDoubleDotCosineDotDoubleInvertedDoubleLineLineXLineYRoundEllipseEllipseAInvertedEllipseAEllipseBEllipseCInvertedEllipseCSquareCrossRhomboidDiamond.

2) A FunctionElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 130, page 309.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 128, page 371.

When the value is a name, the viewer looks up a built-in spot function with that name. The named functions each produce a characteristic dot shape: SimpleDot and Round grow circular dots, Ellipse and EllipseA grow elongated dots, Line and LineX produce line screens, and so on. ISO 32000-2:2020 defines the calculation behind each name.

When the value is a function object, the viewer calls it for every device pixel inside the halftone cell. The function receives two arguments, the x and y positions in the range -1 to 1, and returns a single number. Pixels with smaller return values become part of the dot first as tint increases, so the function controls both the dot shape and its growth direction.

The spot function has a direct effect on print quality. Round dots are forgiving on press; elliptical dots can smooth the midtone jump; line screens reduce rosette patterns in some screening combinations.
