# EntryP Property

## Notes

Represents the "P" entry of the optional content membership dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "AnyOn" if no value has been provided.

This item may take one of the following valid values:.

AllOnAnyOnAnyOffAllOff

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 99, page 223.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 97, page 275.

The P entry names the visibility policy: AllOn (all listed groups must be on), AllOff (all must be off), AnyOn (at least one must be on), or AnyOff (at least one must be off). Content associated with the OCMD is visible when the policy evaluates to true.
