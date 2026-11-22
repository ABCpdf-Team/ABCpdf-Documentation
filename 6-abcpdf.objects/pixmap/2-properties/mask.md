# Mask Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PixMap`](../index.md) | n/a | No | Any one bit image mask associated with this image |

## Notes

One-bit masks do not have the quality of soft masks but they are more compatible with older viewing software, printer RIPs and formats like PDF/A.

If both a [SMask](smask.md) and Mask entry are specified, then the SMask will take priority.
