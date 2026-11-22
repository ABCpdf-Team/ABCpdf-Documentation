# GetNamedSeparations Function

Gets all the named separations referenced by the page.

## Syntax

```csharp
string[] GetNamedSeparations()
```

## Params

| Name | Description |
| :---: | --- |
| return | An array of the names of the separations. |

## Notes

Gets the names of all the separations referenced by the page.

In general named separations (ink names) are referenced on a page because they are used on that page.

However this is not a necessary truth. A spot color separation can be referenced but never used.
