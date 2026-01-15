# GetInfoDate Function

Gets date information about an object.

## Syntax

```csharp
DateTime GetInfoDate(int id, string type)
DateTime GetInfoDate(int id, string type, bool allowLocal)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object to be queried. |
| type | The type of information to be retrieved. |
| allowLocal | For dates containing time zone information, if the parameter is true, the returned values will be local times (local to the time zone of the dates, and not to the local machine); if the parameter is false, the returned values will be UTC times. The default is false. |
| return | The returned value. |

## Notes

This function behaves identically to the GetInfo method but returns a DateTime rather than a string. If the information cannot be obtained or is not a date, then the return value will be the zero DateTime.

PDF dates also contain times. They are stored as strings in PDF so this function is mostly used with the :Text object type.

