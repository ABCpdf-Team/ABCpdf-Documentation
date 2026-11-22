# FindByStyle Function

Find a font from a specific family, with a given style.

## Syntax

*C#*

`static `[`XFont`](../index.md)` FindByStyle(string family, FontWeight weight, bool italic)`  
`static `[`XFont`](../index.md)` FindByStyle(string family, int weight, bool italic)`  
`static `[`XFont`](../index.md)` FindByStyle(string family, FontWeight weight, bool italic, `[`Store`](../../xfont.store/index.md)` store)`  
`static `[`XFont`](../index.md)` FindByStyle(string family, int weight, bool italic, `[`Store`](../../xfont.store/index.md)` store)`  
`static `[`XFont`](../index.md)` FindByStyle(IEnumerable<XFont> fonts, int weight, int weightTolerance, bool italic)`

## Params

| Name | Description |
| :---: | --- |
| family | The name of the font family. |
| fonts | The fonts. |
| weight | The weight (or the midpoint of the permitted weight range) of the required font. |
| weightTolerance | The maximum permitted difference between the weight parameter and the weight of the required font. The default value is 0. |
| italic | Whether an italic font is required. |
| store | A font store to use in addition to the fonts installed on the system. Null values are ignored. |
| return | A matching font. Null if no matching font could be found. |

## Notes

This function finds a font from a specific family or among the given fonts, with a given style.

If no matching font can be found, then the function will return null.

The desired weight can be passed in either as an integer or as a value from the [FontWeight](../2-properties/weight.md) enumeration.
