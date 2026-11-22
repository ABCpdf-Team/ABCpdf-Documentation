# EntryString Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | This property represents the path to the file. |

## Notes

This property represents the path to the file.

It is an required entry and defined as part of the PDF 1.0 specification.

This type of file specification always uses the forward slash character for directory separation.

Because different platforms use different directory separator characters, it is necessary to translate this string for use on different platforms.

If a file name or directory actually contains a forward slash, this needs to be indicated by using a backslash to escape it.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 100.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=108)

The String entry holds the file path or URI as a PDF byte string. The format depends on the file system: a POSIX path, a Windows path, or a URI. PDF does not define a canonical path format, so the interpretation depends on the operating system.
