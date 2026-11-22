# XImage Class

Allows access to images stored in files or in data. XImages can be added to a document using the [Doc.AddImageObject](../doc/1-methods/addimageobject.md) method.

```
System.Object
    WebSupergoo.ABCpdf14.XImage

Implements: IDisposable
```

## Methods

| Method | Description |
| --- | --- |
| Ⓢ ⚠ [FromFile](1-methods/1-fromfile.md) | Creates an XImage from a file path. |
| Ⓢ ⚠ [FromData](1-methods/2-fromdata.md) | Creates an XImage from an array of bytes. |
| Ⓢ ⚠ [FromStream](1-methods/3-fromstream.md) | Creates an XImage from a Stream. |
| [Dispose](1-methods/4-dispose.md) | Dispose of the object. |
| [Clear](1-methods/clear.md) | Clears the image. |
| ⚠ [SetData](1-methods/setdata.md) | Load an image from data. |
| ⚠ [SetFile](1-methods/setfile.md) | Load an image from a file. |
| ⚠ [SetMask](1-methods/setmask.md) | Assign a soft mask to the image. |
| ⚠ [SetStream](1-methods/setstream.md) | Load an image from stream. |
| ⚠ [GetInfo](1-methods/getinfo.md) | Gets internal information from the image. |

## Properties

| Property | Description |
| --- | --- |
| ⚠ [AppliedOrientation](2-properties/appliedorientation.md) | The orientation transform that should be applied to the image. |
| [BoundingBox](2-properties/boundingbox.md) | The physical bounds of the image in points. |
| [Frame](2-properties/frame.md) | The currently selected frame. |
| [FrameCount](2-properties/framecount.md) | The number of frames in the image. |
| [FrameRate](2-properties/framerate.md) | The default frame rate for a moving image. |
| [HasRealRes](2-properties/hasrealres.md) | Whether the image specifies the resolution. |
| [Height](2-properties/height.md) | The height of the current frame (pixels). |
| [HRes](2-properties/hres.md) | The horizontal resolution of the current frame (DPI). |
| [Indirect](2-properties/indirect.md) | Whether the image will be added using indirect mode. |
| [NeedsFile](2-properties/needsfile.md) | Whether the file needs to exist. |
| [NeedsStream](2-properties/needsstream.md) | Whether the stream needs be kept open. |
| [Orientation](2-properties/orientation.md) | The orientation of the current frame. |
| [Selection](2-properties/selection.md) | The current selection rectangle. |
| [Type](2-properties/type.md) | The type of image. |
| [VRes](2-properties/vres.md) | The vertical resolution of the current frame (DPI). |
| [Width](2-properties/width.md) | The width of the current frame (pixels). |
