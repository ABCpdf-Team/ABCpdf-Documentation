# GetData Function

Renders the current area of the current page to memory.

## Syntax

```csharp
byte[] GetData(string name)
```

## Params

| Name | Description |
| --- | --- |
| name | A dummy file name used to determine the type of image required. |
| return | The image as an array of bytes. |

## Notes

Use this method to render the PDF to memory.

The output is a render of the current Doc.Rect of the current Doc.Page.

Any page rotation specified in the PDF page is applied so that the output render is the correct orientation. This may mean that the output width and height are transposed copies of the width and height as specified in the Doc.Rect.

The file path extension determines the format of the output. The file name extensions which may be used are the same as that used for the Save method. Typical extensions used include .TIF, .TIFF, .JPG, .GIF, .PNG, .BMP or .EMF. EMF is a vector rather than raster format which can be useful when you require resolution independence and smaller files.

Normally you will want to render your documents using the Save method. However sometimes you will need to obtain your image as raw data rather than in file format. The GetData method allows you to do this

You may wish to write such an image direct to a client browser rather than going through an intermediate file. The data you obtain using GetData can be written direct to an HTTP stream using Response.BinaryWrite. Similarly you may wish to obtain raw data for insertion into a database.

