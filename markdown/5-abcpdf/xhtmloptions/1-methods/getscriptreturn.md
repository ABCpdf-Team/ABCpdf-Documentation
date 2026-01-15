# GetScriptReturn Method

Retrieves the client side onload script return value.

## Syntax

```csharp
string GetScriptReturn(int id)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the web page to be accessed. |
| return | The return value. |

## Notes

Use this method to retrieve the client side onload script return value.

The ID should be obtained from a call to Doc.AddImageUrl or Doc.AddImageHtml.

See the OnLoadScript property for further details.

