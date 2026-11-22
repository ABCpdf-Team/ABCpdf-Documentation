# CreateObject Method

Creates a JavaScript object.

## Syntax

```csharp
JSValue CreateObject()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| return | A new JavaScript object. |

## Notes

The method creates a JavaScript object. It is much better than calling [ConvertToJS](converttojs.md) with an empty array of KeyValuePair\<string, object>.
