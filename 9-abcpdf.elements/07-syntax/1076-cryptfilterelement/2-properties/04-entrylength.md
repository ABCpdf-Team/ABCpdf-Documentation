# EntryLength Property

## Notes

Represents the "Length" entry of the crypt filter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification. It was deprecated in PDF 2.0.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 25, page 68.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.22, page 22.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 25, page 91.

The Length entry gives the key length in bytes for the encryption method used by this crypt filter. For CFM V2 it may range from 5 to 16 bytes (40 to 128 bits). For AES methods the key length is fixed by the method and this entry is ignored.
