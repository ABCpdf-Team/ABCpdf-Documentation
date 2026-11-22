# Rect Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XRect`](../../../5-abcpdf/xrect/index.md) | n/a | No | The rectangle which defines the position and area of the annotation on the page. |

⚠ `may throw NullReferenceException()`

## Notes

The [XRect](../../../5-abcpdf/xrect/index.md) which defines the position and area of the annotation on the page.

This rectangle is encoded in PDF coordinates rather than any abstracted coordinate space.

This property must always have a value. Attempting to assign a null value to this property will result in a NullReferenceException being thrown.
