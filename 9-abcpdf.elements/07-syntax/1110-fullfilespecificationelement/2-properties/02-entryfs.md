# EntryFS Property

## Notes

Represents the "FS" entry of the full file specification dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The specification defines this as exensible which means that it may contain entries in addition to those defined in the specification.

In fact almost all objects are extensible but the fact that it is explicitly mentioned, implies that extra entries should be regarded as normal rather than exceptional.

For further details see The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: Annex E, page 673..

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 44, page 102.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.41, page 26.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 43, page 132.

The FS entry names the file system to which the file paths in this specification apply. The value URL indicates a URL-based specification. Other values identify file system handlers registered with the viewer. When absent, the default file system is assumed.
