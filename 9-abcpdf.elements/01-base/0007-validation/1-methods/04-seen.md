# Seen Function

Called to indicate that a particular RefAtom has been seen.

## Syntax

```csharp
virtual void Seen(RefAtom refAtom)
```

## Params

| Name | Description |
| :---: | --- |
| refAtom | The RefAtom. |

## Notes

Called to indicate that a particular RefAtom has been seen.

Most of the time the [Start](02-start.md) method can be used to keep track of which IndirectObjects have been seen.

However occasionally a RefAtom may not resolve to an [Element](../../1086-element/index.md) that can be validated.

For example the Length entry in a [StreamElement](../../../07-syntax/1028-streamelement/index.md) is a number indicating the number of bytes of data in the stream.

In most cases this is a simple number embedded as the value of the Length entry in the dictionary.

However some PDFs represent this as a reference to an IndirectObject containing a number.

Since it is a reference to a number there is no [Element](../../1086-element/index.md) type for it and it will not get validated.

For the basic validation process this will not matter since the reference is automatically resolved and a simple number provided.

However if you are keeping track of which IndirectObjects have been validated, it is important to know about these cases.

You can do so by overriding this function.
