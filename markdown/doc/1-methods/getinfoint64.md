# GetInfoInt64 Function

Gets numeric information about an object.

## Syntax

```csharp
long GetInfoInt64(int id, string type)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object to be queried. |
| type | The type of information to be retrieved. |
| return | The returned integer. |

## Notes

This function behaves identically to the GetInfo method but returns a 64-bit integer rather than a string. If the information cannot be obtained or is not numeric, the return value will be zero.

