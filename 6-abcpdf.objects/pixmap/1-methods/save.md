# Save Function

Saves the PixMap to stream attempting to preserve resolution, color space and depth as far as the output format allows

## Syntax

```csharp
void Save(string path)
void Save(Stream stream, string name)
```

## Params

| Name | Description |
| :---: | --- |
| path | The destination file path. |
| stream | The destination output stream. |
| name | A dummy file name used to determine the type of image required. |

## Notes

Saves the PixMap to stream attempting to preserve resolution, color space and depth as far as the output format allows.

The output format is specified using a file extension. In the case of saving to file, the extension is taken from the file path. In the case of saving to stream, a dummy name should be provided.

For details of the capabilities of output formats, see the [XRendering.Save](../../../5-abcpdf/xrendering/1-methods/save.md) method.
