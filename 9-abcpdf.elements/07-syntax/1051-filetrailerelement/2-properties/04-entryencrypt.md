# EntryEncrypt Property

## Notes

Represents the "Encrypt" entry of the file trailer dictionary object.

It is defined as part of the PDF 1.1 specification.

It contains an EncryptionElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 15, page 43.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 15, page 57.

The Encrypt entry references the document's encryption dictionary. When present, the reader must process this dictionary to determine the encryption algorithm and authenticate before accessing the document's content.

The encryption dictionary is not itself encrypted. It must be a direct or indirect object that the reader can parse without first decrypting anything.
