# Stack Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Stack<`[`GraphicsState`](../../i-contentstreamscanner.graphicsstate/index.md)`>` | n/a | No | The current graphics stack. |

## Notes

The current graphics stack. This broadly corresponds with the 'Graphics Stack' as described in the PDF Specification.

The current graphics stack is what is saved and restored using the PDF save and restore operators.

A save pushes a copy of the current state onto the stack. A restore pops the top from the stack.

The top item on the stack is available via the [State](07-state.md) property.
