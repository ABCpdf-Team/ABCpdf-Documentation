# CompressJpeg Function

Compresses the image using JPEG compression.

## Syntax

```csharp
void CompressJpeg(int quality)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| quality | The quality of compression to use (0 to 100). |

## Notes

Compresses the image using JPEG compression.

JPEG compression can be used on RGB, Grayscale, CMYK or Separation images. It offers high compression levels for continuous tone images like photographs. However it is a lossy method which means that the quality of the compressed image will not be as good as the uncompressed image.

The quality of the compression can range from zero (lowest quality, highest compression) to 100 (highest quality, lowest compression). A good generic value is 75.

## Example

See the [Recolor](recolor.md) function.

Also see example code in: [RecolorOperation Recolor Function](../../../8-abcpdf.operations/3-recoloroperation/1-methods/recolor.md).
