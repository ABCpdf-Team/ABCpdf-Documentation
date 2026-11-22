# FromData Function

Creates an XImage from an array of bytes.

## Syntax

*C#*

`static `[`XImage`](../index.md)` FromData(byte[] data, `[`XReadOptions`](../../xreadoptions/index.md)` options)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| data | The data containing the graphic. |
| options | The settings for the read. The XImage takes ownership of this parameter. This may be null. |
| return | The resulting IndirectObject. |

## Notes

The data will typically be one of the following types: JPEG, GIF, TIFF, BMP, PNG, PSD, PDB, EXIF, WMF, EMF, EPS, PS or SWF (Flash).

For details of additional formats which are supported and the way they are imported, see the [ReadModule](../../xreadoptions/2-properties/1-readmodule.md) property and the [Doc.Read](../../doc/1-methods/read.md) method.

The advantage of this method over [SetFile](setfile.md), is that you can specify the [ReadModule](../../xreadoptions/2-properties/1-readmodule.md) you would like to use. This allows precise control over the way that your graphics are imported.

In addition you can also control the way that transparency is treated using the [PreserveTransparency](../../xreadoptions/2-properties/preservetransparency.md) property.

The object takes the ownership of the XReadOptions, which is disposed of when the object is disposed of. You can make the object release the ownership without disposing of the XReadOptions using the parameterized overloads of [Dispose](4-dispose.md) and [Clear](clear.md). The XReadOptions must not be modified as long as the object has the ownership.

The array of bytes should not be modified until the XImage object is cleared, disposed of, or garbage-collected.
