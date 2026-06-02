# Process Function

Process a content stream keeping track of state.

## Syntax

[C#]

```csharp
void Process(IndirectObject owner, ArrayAtom contents)void Process(IndirectObject owner, ArrayAtom contents, IList&lt;Tuple&lt;string, int&gt;&gt; ops)
```

## Params

| **Name** | **Description** |
| --- | --- |
| owner | The owner of the stream - either a Page or Form XObject. |
| contents | The contents of the stream as obtained from a call to ArrayAtom.FromContentStream or similar. |
| ops | The operators to process as obtained from a call to OpAtom.Find or similar. |

## Notes

Process a content stream keeping track of state.

In general you will not need to do this but you can assign custom graphics [State](2-properties/07-state.md) settings prior to calling this function. At completion this function will assign a new graphics state stack ready for the next call.

## Example

None
