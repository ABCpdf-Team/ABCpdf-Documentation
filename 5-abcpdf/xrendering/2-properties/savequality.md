# SaveQuality Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 75 | No | The output file quality for lossy compression. |

## Notes

This property determines the quality of the output image.

It can take values between 0 and 100 ranging from lowest to highest quality.

This property is used for JPEG and JPEG 2000 output only.

## Example

The following example shows the effect that this parameter has on PDF rendering.

```csharp
using var doc = new Doc();
doc.Read("../mypics/SpaceShuttlePage6.pdf");
doc.Rendering.DotsPerInch = 36;
// Save at low quality
doc.Rendering.SaveQuality = 5;
doc.Rendering.Save("RenderingQuality5.jpg");
// Save at high quality
doc.Rendering.SaveQuality = 75;
doc.Rendering.Save("RenderingQuality75.jpg");
```

![RenderingQuality5.jpg \[file size 9.26 KB\]](../../../images/pdf/RenderingQuality5.jpg)  
RenderingQuality5.jpg \[file size 9.26 KB\]

![RenderingQuality75.jpg \[file size 37.3 KB\]](../../../images/pdf/RenderingQuality75.jpg)  
RenderingQuality75.jpg \[file size 37.3 KB\]
