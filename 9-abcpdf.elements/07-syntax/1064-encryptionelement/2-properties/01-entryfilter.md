# EntryFilter Property

## Notes

Represents the "Filter" entry of the encryption dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The specification defines this as exensible which means that it may contain entries in addition to those defined in the specification.

In fact almost all objects are extensible but the fact that it is explicitly mentioned, implies that extra entries should be regarded as normal rather than exceptional.

For further details see The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: Annex E, page 673..

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 20, page 56.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.18, page 14.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 20, page 71.

The Filter entry names the security handler that manages encryption and decryption for this document. The value Standard identifies the built-in password-based handler. Other values identify third-party or public-key handlers.

A reader that does not recognise the named security handler cannot open the document. The filter name is not itself encrypted and is readable before authentication.
