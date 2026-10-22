# EntryCT Property

## Notes

Represents the "CT" entry of the web capture command dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

The PDF specification states that this item assumes a value of "application / x-www-form-urlencoded" if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 357, page 624.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 393, page 805.

The CT entry records the MIME content type of the retrieved content. For a page capture this is typically text/html; for image captures it is the image MIME type.
