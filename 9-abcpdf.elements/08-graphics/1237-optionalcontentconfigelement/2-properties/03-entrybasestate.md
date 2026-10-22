# EntryBaseState Property

## Notes

Represents the "BaseState" entry of the optional content configuration dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "ON" if no value has been provided.

This item may take one of the following valid values:.

ONOFFUnchanged

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 229.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 281.

BaseState determines the initial on/off state for all groups not explicitly listed in the ON or OFF arrays. ON sets all unlisted groups to visible; OFF sets them to hidden; Unchanged leaves them in their current state.

Using Unchanged as a base state allows incremental modifications: only the groups listed in ON and OFF are affected, and all other groups retain their prior state.
