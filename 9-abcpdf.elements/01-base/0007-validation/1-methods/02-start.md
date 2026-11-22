# Start Function

Called at the point each [Element](../../1086-element/index.md) starts validation.

## Syntax

*C#*

`virtual bool Start(`[`Element`](../../1086-element/index.md)` element)`  
`virtual void Start(string entry)`  
`virtual void Start(int index)`

## Params

| Name | Description |
| :---: | --- |
| element | The element. |
| entry | The new key or entry. |
| index | The new index. |

## Notes

Called at the point each [Element](../../1086-element/index.md) starts validation.

If the [Element](../../1086-element/index.md) has already been seen then this function should return false to indicate that it has already been validated.

If not then the function should return true to indicate that validation should go ahead.

Subclasses should keep track of elements that they have seen so as to avoid recursive loops.
