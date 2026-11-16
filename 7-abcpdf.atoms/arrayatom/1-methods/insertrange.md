# InsertRange Function

Inserts the elements in the supplied array into this array at the specified index

## Syntax

[C#]

```csharp
void InsertRange(int index, <a href="../default.htm">ArrayAtom</a> array)void InsertRange(int index, ICollection&lt;Atom&gt; collection)
```

## Params

| **Name** | **Description** |
| --- | --- |
| index | The zero-based index at which the new elements should be inserted. |
| array | The array whose elements should be inserted. |
| collection | The collection whose elements shall be inserted. |

## Notes

Inserts the elements in the supplied array into this array at the specified index.

If the index is equal to the [Count](2-properties/count.md) then the elements are added to the end of the array.

If the supplied array is null or the index is invalid then an exception will be raised.

## Example

None
