# CompressMetadata Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to compress catalog metadata in the document. |

## Notes

Whether to compress catalog metadata in the document

XMP metadata is normally held uncompressed as this allows third party software to read and modify it even if it does not understand the PDF format.

However some metadata can be very large and in this situation you might prefer to compress it. This property allows you to do this.
