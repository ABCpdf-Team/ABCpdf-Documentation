# FromNums  Function

Create an XRect from an array or list of four numbers.

## Syntax

```csharp
static <a href="../default.htm">XRect</a> FromNums(double[] array)<br> static <a href="../default.htm">XRect</a> FromNums(IList<double> list)
```

## Params

| Name | Description |
| --- | --- |
| array | An array containing four doubles. |
| list | An IList containing four doubles. |
| return | The newly created XRect object. |

## Notes

Create  an XRect from an array or list of four numbers.

Such arrays typically contain lower left x and y coordinates followed by upper right x and y.

However this is a convention and any two diagonally opposite points are acceptable.

If the array is null or does not contain four items then the return will be null.

