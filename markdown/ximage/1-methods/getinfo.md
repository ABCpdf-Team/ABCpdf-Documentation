# GetInfo Function

Gets internal information from the image.

## Syntax

```csharp
string GetInfo(string type)
```

## Params

| Name | Description |
| --- | --- |
| type | The type of information to get. |
| returns | The information. |

## Notes

Gets internal information from the image.

Internal information is  format specific so you need to use different selectors with different formats. The JPEG 2000 format implements a "Structure" info which provides the tag structure of the raw data together with types, offsets and lengths. This can be used to modify or insert tags for custom output. The TIFF format implements a "TiffTag:" info which allows you to get the values of TIFF tags either by name or number. Simply append the item you are interested in. For example you might use "TiffTag:InkNames" to get the ink or "TiffTag:271" to retrieve the scanner manufacturer.

