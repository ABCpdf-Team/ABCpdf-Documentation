# ProcessItem Function

[Process](02-process.md) an item in a content stream and update the graphics or text state to reflect the action of the item.

## Syntax

```csharp
virtual void ProcessItem(IndirectObject owner, ArrayAtom contents, string op, int pos)
```

## Params

| Name | Description |
| :---: | --- |
| owner | The owner of the stream - either a Page or Form XObject. |
| contents | The contents of the stream as obtained from a call to ArrayAtom.FromContentStream or similar. |
| op | The name of the operator. For example this might be "cm" or "q". |
| pos | The index of the operator in the contents array. |

## Notes

[Process](02-process.md) an item in a content stream and update the [graphics](../2-properties/07-state.md) or [text](../2-properties/08-text.md) state to reflect the action of the item.

For your own operator processing you will wish to override this function.
