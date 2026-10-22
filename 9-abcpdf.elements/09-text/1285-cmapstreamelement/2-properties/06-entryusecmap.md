# EntryUseCMap Property

## Notes

Represents the "UseCMap" entry of the cmap stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A string representing a PDF name object.

2) A StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 120, page 277.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 118, page 336.

This entry can hold either a name referencing a predefined CMap or a stream reference to another CMap object. Character codes not mapped by the current CMap fall through to the referenced one.

This chaining mechanism lets a CMap be compact by covering only the differences from a standard mapping.
