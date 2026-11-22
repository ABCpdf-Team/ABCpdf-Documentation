# GetScriptReturn Method

Retrieves the client side onload script return value.

## Syntax

```csharp
string GetScriptReturn(int id)
```

## Params

| Name | Description |
| :---: | --- |
| id | The Object ID of the web page to be accessed. |
| return | The return value. |

## Notes

Use this method to retrieve the client side onload script return value.

The ID should be obtained from a call to [Doc.AddImageUrl](../../doc/1-methods/addimageurl.md) or [Doc.AddImageHtml](../../doc/1-methods/addimagehtml.md).

See the [OnLoadScript](../2-properties/onloadscript.md) property for further details.

## Example

See the [UseScript](../2-properties/usescript.md) property.
