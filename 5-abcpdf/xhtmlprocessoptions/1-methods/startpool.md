# StartPool Method

Start the process pool for the HTML Engine.

## Syntax

```csharp
bool StartPool()
```

## Params

| Name | Description |
| :---: | --- |
| return | Whether the process pool is started anew. |

## Notes

This starts the process pool for the HTML Engine (without rendering an HTML page).

This method returns false if the process pool has been started before the method is called.
