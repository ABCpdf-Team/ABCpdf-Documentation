# ReportRecursiveStructure Function

Called to report detection of a recursive structure.

## Syntax

```csharp
virtual void ReportRecursiveStructure()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Called to report detection of a recursive structure.

Recursive structures are unusual but they can exist.

For example a Page object might contain a reference to itself.

This needs to be detected to avoid a recursive loop in which the Page validates itself over and over again.

In the event that this type of recursion is detected, this function will be called.
