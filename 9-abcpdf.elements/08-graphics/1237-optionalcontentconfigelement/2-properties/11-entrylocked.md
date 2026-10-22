# EntryLocked Property

## Notes

Represents the "Locked" entry of the optional content configuration dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains an array which contains OptionalContentGroupElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 231.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 283.

The Locked array lists optional content groups whose states cannot be changed interactively by the user within this configuration. Locked groups may still be changed programmatically or by usage applications. This prevents accidental modification of critical layers.
