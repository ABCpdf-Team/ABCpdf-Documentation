# GetHttpStatusCode Method

Retrieves the HTTP status code.

## Syntax

```csharp
int GetHttpStatusCode(int id)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the web page to be accessed. |
| return | The HTTP status code or zero if not available. |

## Notes

Use this method to retrieve the HTTP status code if the URL uses the HTTP protocol.

The ID should be obtained from a call to Doc.AddImageUrl.

If the PageLoadMethod property is WebBrowserNavigate, only error status codes are available. Non-error status codes, such as 200, are not available.

