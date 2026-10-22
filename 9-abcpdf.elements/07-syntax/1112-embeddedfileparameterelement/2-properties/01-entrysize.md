# EntrySize Property

## Notes

Represents the "Size" entry of the embedded file parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 46, page 104.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 45, page 137.

The Size entry gives the size of the uncompressed embedded file data in bytes. It allows applications to report the file size without decoding the stream and to allocate the correct buffer for extraction.
