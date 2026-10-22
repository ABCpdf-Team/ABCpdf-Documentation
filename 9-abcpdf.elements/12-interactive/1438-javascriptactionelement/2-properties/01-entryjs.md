# EntryJS Property

## Notes

Represents the "JS" entry of the javascript action object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A string representing a PDF string object.

2) A TextStreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 217, page 430.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 221, page 523.

When JS is a stream the stream data is the script text. Storing the script in a stream avoids PDF string length limitations and allows the script to be shared by reference from multiple actions.
