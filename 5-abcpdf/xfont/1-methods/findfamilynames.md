# FindFamilyNames Function

Find the names of all font families.

## Syntax

*C#*

`static string[] FindFamilyNames()`  
`static string[] FindFamilyNames(`[`Store`](../../xfont.store/index.md)` store)`

## Params

| Name | Description |
| :---: | --- |
| store | A font store to use in addition to the fonts installed on the system. Null values are ignored. |
| return | The set of family names. |

## Notes

This function finds all the font families currently available.
