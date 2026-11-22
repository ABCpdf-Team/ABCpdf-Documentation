# Decompress Function

Decompress the data in the stream using on-the-fly resizing

## Syntax

```csharp
bool Decompress(int width, int height)
```

## Params

| Name | Description |
| :---: | --- |
| width | The desired final width. |
| height | The desired final height |
| return | Whether the data was decompressed correctly. |

## Notes

Decompress the data in the stream using on-the-fly resizing of the image. This type of scaling is fast and memory efficient but may change the depth of the image. Only some compression types support on-the-fly resizing.

As such you should always check the dimensions of the image after calling this method. Do not assume that simply because the image has decompressed correctly that it has also been resized.
