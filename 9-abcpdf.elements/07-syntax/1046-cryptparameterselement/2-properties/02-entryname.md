# EntryName Property

## Notes

Represents the "Name" entry of the crypt parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Identity" if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 14, page 38.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 14, page 52.

The Name entry identifies which crypt filter from the document's CF dictionary applies to this stream. The special name Identity passes the stream data through without any encryption or decryption.

When Name is absent, the filter named in the encryption dictionary's StmF entry is used. An explicit Name entry overrides the document-level stream filter, allowing individual streams to use different encryption than the document default.
