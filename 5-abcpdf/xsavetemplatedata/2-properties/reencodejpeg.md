# ReencodeJpeg Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether JPEG images are re-encoded in JPEG. |

## Notes

This property is effectual where both the source and the destination formats are JPEG. It specifies whether JPEG encoding occurs. When it is false, the source is directly used as the output without re-encoding. When it is true, the source is re-encoded in JPEG.

Reencoding allows a JPEG image to use a different [quality level](jpegquality.md). However, reencoding a JPEG image at the same/a higher quality level does not improve the image quality and may degrade it.
