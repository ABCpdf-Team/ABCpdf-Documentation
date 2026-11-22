# Stack Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Stack<`[`ValidationStackNode`](../../0008-validationstacknode/index.md)`>` | null | No | Gets or sets the stack. |

## Notes

Gets or sets the stack.

[Validation](../../0007-validation/index.md) is a recursive process. One [Element](../../1086-element/index.md) validates each of its child [Elements](../../1086-element/index.md). Each of those in turn validate their children.

In the event that an inconsistency is found, it useful to know how the current [Element](../../1086-element/index.md) was arrived at.

This property allows you to examine the current state of the stack including all parent StackNodes up to the root.

There may be apparent duplicates on the stack as sub-classes may result in multiple calls to the Start function.

For this reason, for a stack trace, you will generally want to use the [GetStackTrace](../1-methods/02-getstacktrace.md) function.

However you may also find that you want to Peek at the top - current - item for added detail when reporting errors.
