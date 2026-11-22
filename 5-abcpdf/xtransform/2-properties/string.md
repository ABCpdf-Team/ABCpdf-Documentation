# String Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "1 0 0 1 0 0" | No | The transform as a string. |

## Notes

Allows you access to the transform as a string.

The format of the string must be "m11 m12 m21 m22 mX mY".

To transform a point (x, y) to another point (x', y'), the following formula is used:

```
  x' = (x * m11) + (y * m21) + mX
  y' = (x * m12) + (y * m22) + mY
```

## Example

Also see example code in: [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md).
