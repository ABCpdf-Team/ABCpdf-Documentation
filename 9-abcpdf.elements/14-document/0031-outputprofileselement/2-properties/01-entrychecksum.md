# EntryCheckSum Property

## Notes

Represents the "CheckSum" entry of the destoutputprofileref dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 402, page 817.

The CheckSum entry holds a 16-byte MD5 digest of the ICC profile data stream. A reader can verify profile integrity by computing and comparing this digest.
