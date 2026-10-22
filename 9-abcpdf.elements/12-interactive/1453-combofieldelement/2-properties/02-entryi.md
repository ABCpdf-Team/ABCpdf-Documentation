# EntryI Property

## Notes

Represents the "I" entry of the combo field object.

It is defined as part of the PDF 1.4 specification.

It contains an array which contains integers, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 231, page 445.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 234, page 539.

For a combo field the I array contains at most one element: the zero-based index of the currently selected option. When the user types a custom value I is empty and V holds the custom string.
