# FindFamily Function

Find all the fonts belonging to a particular family.

## Syntax

*C#*

`static `[`XFont`](../index.md)`[] FindFamily(string family)`  
`static `[`XFont`](../index.md)`[] FindFamily(string family, `[`Store`](../../xfont.store/index.md)` store)`

## Params

| Name | Description |
| :---: | --- |
| family | The name of the font family. |
| store | A font store to use in addition to the fonts installed on the system. Null values are ignored. |
| return | The set of matching fonts. |

## Notes

This function finds all the fonts belonging to a particular font family.
