# EntryH Property

## Notes

Represents the "H" entry of the linearization parameter dictionary object.

It is a required entry defined as part of the PDF 1.2 specification.

It contains an array which contains integers, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: f.1, page 680.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: f.1, page 877.

The H entry holds an array of two or four integers giving the offset and length of the primary hint stream and optionally the overflow hint stream. Hint streams allow byte range calculations before the rest of the file is downloaded.
