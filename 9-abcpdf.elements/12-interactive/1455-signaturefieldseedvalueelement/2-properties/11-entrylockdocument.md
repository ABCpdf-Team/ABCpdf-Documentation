# EntryLockDocument Property

## Notes

Represents the "LockDocument" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "auto" if no value has been provided.

This item may take one of the following valid values:.

truefalseauto

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 447.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 544.

When true and the Ff flag bit is set the signed document must be locked against further changes. When false it must not be locked.
