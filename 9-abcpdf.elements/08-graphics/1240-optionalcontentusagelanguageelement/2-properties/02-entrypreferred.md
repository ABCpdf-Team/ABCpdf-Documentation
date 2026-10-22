# EntryPreferred Property

## Notes

Represents the "Preferred" entry of the optional content usage language dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "OFF" if no value has been provided.

This item may take one of the following valid values:.

ONOFF

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.

The Preferred name, when set to ON, marks this language usage as the preferred choice for the specified language. A viewer that cannot find an exact language match may fall back to groups marked as preferred for the closest matching language.
