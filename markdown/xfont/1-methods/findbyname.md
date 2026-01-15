# FindByName 
Function

Find all the fonts with a given name.

## Syntax

```csharp
static <a href="../default.htm">XFont</a>[] FindByName(string name)
```

## Params

| Name | Description |
| --- | --- |
| name | The name of the font. |
| return | The set of matching fonts. |

## Notes

This function finds all the fonts with a given name.

Note that each font may contain many different names. Some names are more unique than others. So it is good to be as specific as possible when searching by name.

