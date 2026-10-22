# EntryJBIG2Globals Property

## Notes

Represents the "JBIG2Globals" entry of the jbig2 parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 12, page 32.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 12, page 46.

The JBIG2Globals entry references a stream containing JBIG2 global segments shared across multiple JBIG2-encoded image streams in the document. These segments typically contain symbol dictionaries that define glyphs reused across pages.

Sharing global segments avoids repeating large symbol tables in every page stream, which can significantly reduce file size in documents with repeated text or halftone patterns.
