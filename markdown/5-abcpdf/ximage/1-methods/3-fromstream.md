# FromStream 
Function

Creates an XImage from a Stream.

## Syntax

```csharp
static <a href="../default.htm">XImage</a> FromStream(Stream stream, <a href="../../xreadoptions/default.htm">XReadOptions</a> options)
```

## Params

| Name | Description |
| --- | --- |
| stream | The stream containing the graphic. |
| options | The settings for the read. The XImage takes ownership of this parameter. This may be null. |
| return | The resulting IndirectObject. |

## Notes

The stream will typically be one of the following types: JPEG, GIF, TIFF, BMP, PNG, PSD, PDB, EXIF, WMF, EMF, EPS, PS or SWF (Flash).

For details of additional  formats which are supported and the way they are imported, see the ReadModule property and the the Doc.Read method.

The advantage of  this method over SetStream, is that you can specify the ReadModule you would like to use. This allows precise control over the way that your graphics are imported.

In addition you can also control the way that transparency is treated using the PreserveTransparency property.

The object takes the ownership of the XReadOptions, which is disposed of when the object is disposed of. You can make the object release the ownership without disposing of the XReadOptions using the parameterized overloads of Dispose and Clear. The XReadOptions must not be modified as long as the object has the ownership.

If the returned XImage has the NeedsStream property set to true, you must ensure that the specified stream will remain present and unmodified  until the XImage object is  cleared, disposed of, or garbage-collected. When this happens the XImage takes  ownership of the Stream, which is disposed of when the object is disposed of. You can make the object release the ownership, without disposing of the Stream using the parameterized overloads of Dispose and Clear.

