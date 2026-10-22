# EntryStyle Property

## Notes

Represents the "Style" entry of the richmediapresentation dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Embedded" if no value has been provided.

This item may take one of the following valid values:.

EmbeddedWindowed

For definitive details see:.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.50d, page 82.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 338, page 701.

The style name selects the display container: Embedded places the player inside the annotation rectangle, Windowed opens a separate floating window, and Fullscreen takes over the entire display.
