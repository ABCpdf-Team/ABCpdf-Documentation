# GetBitmap Function

Renders a page into a bitmap.

## Syntax

```csharp
System.Drawing.Bitmap GetBitmap()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| return | The Bitmap containing the image. |

## Notes

Renders a page into a Bitmap.

The page and rendering options which will be used are those which were current at the time the RenderOperation was created.

This method is similar in functionality to [XRendering.GetBitmap](../../../5-abcpdf/xrendering/1-methods/getbitmap.md) but allows safe multi-threaded use.

For details see the [Save](save.md) method.

## Example

Nne.
