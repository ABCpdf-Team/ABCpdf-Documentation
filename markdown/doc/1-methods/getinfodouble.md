# GetInfoDouble Function

Gets numeric information about an object.

## Syntax

```csharp
double GetInfoDouble(int id, string type)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object to be queried. |
| type | The type of information to be retrieved. |
| return | The returned value. |

## Notes

This function behaves identically to the GetInfo method but returns a double rather than a string. If the information cannot be obtained or is not numeric, the return value will be zero.

