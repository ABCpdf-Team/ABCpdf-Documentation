# EntryCIDSystemInfo Property

## Notes

Represents the "CIDSystemInfo" entry of the cmap stream dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an Element.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 120, page 277.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 118, page 336.

This entry identifies the character collection the CMap targets. It must be compatible with the CIDSystemInfo of the CIDFont it is paired with: Registry and Ordering must match, and the CMap supplement must not exceed the CIDFont supplement.

This is a direct dictionary object embedded in the stream dictionary.
