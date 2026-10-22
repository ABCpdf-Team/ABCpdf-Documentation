# EntrySubFilter Property

## Notes

Represents the "SubFilter" entry of the signature dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a string representing a PDF name object.

The specification defines this as exensible which means that it may contain entries in addition to those defined in the specification.

In fact almost all objects are extensible but the fact that it is explicitly mentioned, implies that extra entries should be regarded as normal rather than exceptional.

For further details see The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: Annex E, page 673..

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.

The sub-filter name identifies the specific encoding and container format of the signature bytes in Contents. The sub-filter determines the structure the verifier must parse.
