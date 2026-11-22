# ReportIncorrectNumberOfEntries Function

Called to report an array with an incorrect number of entries.

## Syntax

```csharp
virtual void ReportIncorrectNumberOfEntries(int expected, int found)
```

## Params

| Name | Description |
| :---: | --- |
| expected | The value which was expected. |
| found | The value which was found. |

## Notes

Called to report an array with an incorrect number of entries.

Some arrays have a set number of items.

For example a value range may be represented as an array with two elements indicating higher and lower bounds.

In the event that the number of entries is incorrect, this function will be called.
