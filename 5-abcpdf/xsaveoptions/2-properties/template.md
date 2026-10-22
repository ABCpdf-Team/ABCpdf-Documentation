# Template Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | null | No | The path to the template file. |

## Notes

This property specifies the template file, which provides some format-specific data essential to the usefulness of the output when saving in certain formats such as SWF.

When saving in SWF, if the property is null, the output contains the content of the current rectangle of the current PDF page.

When saving in SWF, if the property is the special value [XSaveTemplateData](xsavetemplatedata/default.md).Template_OnePagePerFrame, each frame of the output contains the content of a PDF page. The contents of pages of different sizes will be centered. You can optionally specify settings that are normally provided by a template file. Such settings are separated by NUL and the name-value separator is colon. The values of settings are specified in string in the invariant culture.

XSaveTemplateData.Template_OnePagePerFrame has one setting "FrameRate" which is a ushort. This sets the frame rate in 1/256 frames per second. The default is 64 - a quarter of a frame per second.

## Example

See the example project for how to use a SWF template file. Here we specify one page per frame and 2 frames per second for SWF format.

[C#]

```csharp
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
doc.SaveOptions.Template = XSaveTemplateData.Template_OnePagePerFrame + "\0FrameRate:512";
doc.Save("swfsave_fr.swf");
```

