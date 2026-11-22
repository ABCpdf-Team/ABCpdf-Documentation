# UpdateProfile Function

Updates this object to reflect the values contained within the embedded ICC color profile data

## Syntax

```csharp
bool UpdateProfile()
```

## Params

| Name | Description |
| :---: | --- |
| return | Whether the operation was successful. |

## Notes

Updates this object to reflect the values contained within the embedded ICC color profile data.

If the ICC profile was absent or corrupt then the return value will be false.
