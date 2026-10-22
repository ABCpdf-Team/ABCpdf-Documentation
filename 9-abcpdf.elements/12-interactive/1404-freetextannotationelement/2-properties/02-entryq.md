# EntryQ Property

## Notes

Represents the "Q" entry of the free text annotation object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 2.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 174, page 396.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 177, page 481.

The quadding value selects text alignment: 0 for left, 1 for centred, and 2 for right. It applies within the annotation's text rectangle, which may be inset from the outer Rect by the RD entry.
