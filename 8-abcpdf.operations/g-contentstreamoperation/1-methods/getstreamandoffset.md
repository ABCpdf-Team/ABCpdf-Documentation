# GetStreamAndOffset Function

Finds the location of an operator in a set of streams.

## Syntax

```csharp
Tuple<StreamObject, int> GetStreamAndOffset(IndirectObject owner, int offset, int length)
```

## Params

| Name | Description |
| :---: | --- |
| owner | The owner of the content sequence. |
| offset | The offset of the start of the token. |
| length | The length of the token. |
| return | A pair representing the containing StreamObject and the offset to the start of the token. |

## Notes

Finds the location of an operator in a set of streams.

Given the offset and length of a token (typically an operator), this function determines the StreamObject in which it is located and the offset within that StreamObject.

If the offset cannot be found then an exception will be raised.

If the operator is split over two StreamObjects then an exception is thrown.

The PDF specification prohibits a token being split in this way so this should not happen.
