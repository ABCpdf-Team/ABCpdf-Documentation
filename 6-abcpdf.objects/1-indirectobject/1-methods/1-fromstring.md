# FromString Function

Construct an appropriate type of IndirectObject given a string value.

## Syntax

*C#*

`static `[`IndirectObject`](../index.md)` FromString(string value)`  
`static `[`IndirectObject`](../index.md)` FromString(string value, `[`ObjectSoup`](../../2-objectsoup/index.md)` soup)`

## Params

| Name | Description |
| :---: | --- |
| value | The string representing the value of the object. |
| soup | The object soup into which the newly constructed object should be placed. |
| return | The resulting IndirectObject. |

## Notes

The text you pass this function must be in native PDF format. This means that unusual characters in text strings must be appropriately escaped.

For full details of the way that PDF objects are represented you should see the Adobe PDF Specification.
