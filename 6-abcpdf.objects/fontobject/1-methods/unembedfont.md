# UnembedFont Function

Unembed the font if this is a simple operation.

## Syntax

```csharp
int UnembedFont()
```

## Params

| Name | Description |
| :---: | --- |
| return | The number of bytes of font data that were removed as a result of this call. |

## Notes

Unembed the font if this is a simple operation.

Latin based fonts can often be unembedded as a simple and fast operation. However Unicode and symbolic fonts are more complex to unembed and cannot be simply removed from the document. To unembed a composite font you need to use the [ReduceSizeOperation](../../../8-abcpdf.operations/b-reducesizeoperation/index.md) class.

This function returns the number of bytes of font data that were removed as a result of this call. Note that it is possible for multiple font objects to reference the same embedded font. In this case each call to unembed will return the same number and the actual font will only actually be removed from the document if all references to it are released.
