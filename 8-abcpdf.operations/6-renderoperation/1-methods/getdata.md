# GetData Function

Renders a page into an array of bytes.

## Syntax

[C#]

```csharp
byte[] GetData(string name)
```

## Params

| **Name** | **Description** |
| --- | --- |
| name | A dummy file name used to determine the type of image required. |
| return | The image as an array of bytes. |

## Notes

Renders a page into an array of bytes.

The page and rendering options which will be used are those which were current at the time the RenderOperation was created.

This method is similar in functionality to [XRendering.GetBitmap](5-abcpdf/xrendering/1-methods/getbitmap.md) but allows safe multi-threaded use.

For details see the [Save](save.md) method.

## Example

See the [Save](save.md) method.
