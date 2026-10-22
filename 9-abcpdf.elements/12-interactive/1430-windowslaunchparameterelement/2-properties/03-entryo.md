# EntryO Property

## Notes

Represents the "O" entry of the windows launch parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

The PDF specification states that this item assumes a value of "open" if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 204, page 423.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 208, page 513.

The operation string is passed to the Windows shell as the verb for the ShellExecute call. Common values are open, print, and edit. If absent the shell uses the file type's default verb.
