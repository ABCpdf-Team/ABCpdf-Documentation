# EntryCFM Property

## Notes

Represents the "CFM" entry of the crypt filter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "None" if no value has been provided.

This item may take one of the following valid values:.

NoneV2AESV2AESV3

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 25, page 68.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.22, page 22.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 25, page 90.

The CFM entry names the encryption method for this crypt filter. None means no encryption. V2 uses RC4 with the key length given by Length. AESV2 uses 128-bit AES in CBC mode with a random initialisation vector prepended to the ciphertext. AESV3 uses 256-bit AES.
