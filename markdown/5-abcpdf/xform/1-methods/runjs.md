# RunJS Function

Run JavaScript code.

## Syntax

```csharp
string RunJS(string js, JSOptions options)
```

## Params

| Name | Description |
| --- | --- |
| js | The JavaScript code to be executed. The method does nothing if it is null/Nothing or empty. |
| options | The options. If it is null, a default will be used. |
| return | The result of the execution converted to string. |

## Notes

This method runs the JavaScript code against the PDF document. For example, you can execute actions that are executed when an annotation is clicked on by running the JavaScript code obtained with doc.GetInfo(annot.ID, "/A/JS:Text").

