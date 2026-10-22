# EntryReasons Property

## Notes

Represents the "Reasons" entry of the signature field seed value dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 448.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 543.

The array lists text strings from which the signer may choose a signing reason. When mandatory the signer must select one of these strings; when advisory the signer may enter a custom reason.
