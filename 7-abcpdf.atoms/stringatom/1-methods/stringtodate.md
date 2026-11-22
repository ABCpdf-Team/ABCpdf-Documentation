# StringToDate Function

Convert a standard PDF date string into a DateTime.

## Syntax

```csharp
static DateTime StringToDate(string dateTime)
```

## Params

| Name | Description |
| :---: | --- |
| dateTime | The standard PDF date string. |
| return | The DateTime to be converted. |

## Notes

Convert a standard PDF date string into a DateTime.

The PDF date string covers date, time and time zone. The format is broadly similar to ASN.1 as detailed in ISO/IEC 8824.

For example, February 3, 2017, at 9:14 PM Pacific Standard Time would be represented as "D:201702032114-08'00".
