# Pin Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Corner` | Corner.BottomLeft | No | The corner of the rectangle to pin. |

## Notes

Allows you change the pinned corner of the rectangle.

The Corner enumeration may take the following values:

- BottomLeft
- TopLeft
- BottomRight
- TopRight

Some operations require that the rectangle is pinned to a location. For example if you want to change the width of a rectangle you can do this either by shifting the left side or the right side. If the pin property is set to the bottom or top left then the left side of the rectangle will be kept fixed and the right side shifted. Conversely if the pin property is set to the bottom or top right then the right side of the rectangle will be kept fixed and the left side shifted.

> **Why is my Pin a number?**
>
> In older versions of ABCpdf the Pin property was a number. To assign a Corner to the Pin property you needed to cast the value. So you might find code of this form.
>
> ```csharp
> theRect.Pin = (int)XRect.Corner.TopRight;
> ```
>
> In Version 8 the Pin property has been changed to a true enumeration. This means you can assign the Corner directly.
>
> ```csharp
> theRect.Pin = XRect.Corner.TopRight;
> ```
>
> If your code is bound to integers rather than enumerations then it is safe to cast the number to a Corner.
>
> ```csharp
> theRect.Pin = (XRect.Corner)myIntegerValue;
> ```

## Example

Also see example code in: [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md), [Doc TopDown Property](../../doc/2-properties/topdown.md), [XRendering DrawAnnotations Property](../../xrendering/2-properties/drawannotations.md), [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md), [PixMap SetAlpha Function](../../../6-abcpdf.objects/pixmap/1-methods/setalpha.md), [PixMap ToGrayscale Function](../../../6-abcpdf.objects/pixmap/1-methods/tograyscale.md).
