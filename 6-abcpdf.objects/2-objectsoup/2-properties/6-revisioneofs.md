# RevisionEOFs Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `long[]` | n/a | Yes | This provides the end of trailer offsets within the underlying PDF stream. |

## Notes

This provides the end of trailer offsets within the underlying PDF stream. These correspond with the length of each revision.

The offset is the number of bytes to the start of the %%EOF tag rather than to the end of the physical file.

The %%EOF tag is a line so normally, but not always, it will be followed by a CR, LF or CRLF.

By truncating the original PDF file to the end of this line you can recreate the PDF at that revision.
