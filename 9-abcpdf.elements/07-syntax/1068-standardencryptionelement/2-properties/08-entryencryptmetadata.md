# EntryEncryptMetadata Property

## Notes

Represents the "EncryptMetadata" entry of the standard security handler encryption dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 21, page 60.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.19, page 16.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 21, page 77.

The EncryptMetadata entry controls whether the document's XMP metadata stream is encrypted along with the rest of the document. When false, the metadata remains readable without authentication, supporting metadata harvesting by search engines and other tools.

When absent, the default value is true, meaning metadata is encrypted. Conforming readers must check this entry before attempting to read document metadata.
