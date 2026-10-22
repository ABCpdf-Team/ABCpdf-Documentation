# EntryGroup Property

## Notes

Represents the "Group" entry of the form XObject dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a GroupAttributesElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 95, page 219.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.45, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 93, page 269.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 363, page 632.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 399, page 812.

The Group entry designates the form as a transparency group. The dictionary specifies the group's color space and whether it is isolated (composites internally without seeing the backdrop) and knockout (later objects knock out earlier ones rather than compositing over them).

A transparency group form allows complex compositing effects to be encapsulated. The form's objects composite together internally, and only the combined result composites into the parent.
