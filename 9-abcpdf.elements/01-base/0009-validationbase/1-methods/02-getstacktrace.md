# GetStackTrace Function

Gets the stack trace.

## Syntax

```csharp
string GetStackTrace()
```

## Params

| Name | Description |
| :---: | --- |
| return | A string containing the stack trace. |

## Notes

Gets the stack trace.

[Validation](../../0007-validation/index.md) is a recursive process. One [Element](../../1086-element/index.md) validates each of its child [Elements](../../1086-element/index.md). Each of those in turn validate their children.

In the event that an inconsistency is found, it useful to know how the current [Element](../../1086-element/index.md) was arrived at.

This property allows you to get the current stack trace stack including all parents up to the root.
