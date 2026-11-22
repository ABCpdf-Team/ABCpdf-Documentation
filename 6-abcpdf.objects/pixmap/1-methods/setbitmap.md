# SetBitmap Function

Set the content of the object as a Bitmap

## Syntax

```csharp
void SetBitmap(System.Drawing.Bitmap bitmap, bool transparent)
```

## Params

| Name | Description |
| :---: | --- |
| bitmap | The Bitmap containing the image. |
| transparent | Whether any transparency information should be preserved. |

## Notes

Set the content of the object as a System.Drawing.Bitmap.

If transparency is required, the PixMap must be contained within an [ObjectSoup](../../2-objectsoup/index.md).

After the Bitmap has been set, the PixMap will be uncompressed. You may wish to compress it using a call like [CompressJpeg](compressjpeg.md) or [CompressFlate](../../streamobject/1-methods/compressflate.md).

## Example

See the Doc.[AddXObject](../../../5-abcpdf/doc/1-methods/addxobject.md) method..

Also see example code in: [Doc AddXObject Function](../../../5-abcpdf/doc/1-methods/addxobject.md).
