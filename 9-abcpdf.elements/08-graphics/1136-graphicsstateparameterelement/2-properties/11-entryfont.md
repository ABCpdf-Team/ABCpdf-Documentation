# EntryFont Property

## Notes

Represents the "Font" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an array which contains Elements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.

The font entry in the graphics state parameter dictionary holds a two-element array containing a font reference and a size. This allows a complete font setting to be captured and restored as part of a named graphics state resource.

Applying this entry has the same effect as executing the Tf operator with the specified font and size, updating the current font and text size in the graphics state.
