# RemoveAt Function

Removes an object at a specified position from the Soup.

## Syntax

```csharp
void RemoveAt(int index)
```

*C#*

⚠ `may throw ArgumentOutOfRangeException()`

## Params

| Name | Description |
| :---: | --- |
| index | The zero-based index of the item to remove. |

## Notes

If the index is not valid then an ArgumentOutOfRangeException will be thrown.

When an object is removed it leaves a gap in the Soup. Other objects do not move to fill the gap.

[RefAtoms](../../../7-abcpdf.atoms/refatom/index.md) pointing to the object which was removed are not updated. This means you can remove one object and replace it with a substitute. Other IndirectObjects in the Soup will then refer to the new object rather than the old one.

However it also means that you should be careful about removing an object and not replacing it. Because the slot is free it may be re-used and any references which exist may then point to a new - inappropriate - object.
