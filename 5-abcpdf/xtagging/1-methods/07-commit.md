# Commit Function

Commit any changes that may be required as a result of moving between two pages.

## Syntax

[C#]

```csharp
<a href="../../../8-abcpdf.operations/N-accessibility.structure/default.htm">void</a> Commit()
```

## Params

| **Name** | **Description** |
| --- | --- |
| none |  |

## Notes

Commit any changes that may be required as a result of moving between two pages.

Normally Commits occur automatically as you move between pages. However in cases in which you require fine grained control you may set the [AutoCommit](2-properties/autocommit.md) property to false and signal any relevant change of pages yourself by calling this function.

Calling this function multiple times is allowed. If the current page has not been changed or Commit has already been called, subsequent calls will have no effect.
