# Copy Function

Copies a series of X and Y coordinates between arrays of doubles and arrays of XPoints

## Syntax

```csharp
void Copy(<a href="../default.htm">XPoint</a>[] source, double[] destination, int length)<br> void Copy(<a href="../default.htm">XPoint</a>[] source, int sourceIndex, double[] destination, int destinationIndex, int length)<br> void Copy(double[] source, <a href="../default.htm">XPoint</a>[] destination, int length)<br> void Copy(double[] source, int sourceIndex, <a href="../default.htm">XPoint</a>[] destination, int destinationIndex, int length)
```

## Params

| Name | Description |
| --- | --- |
| source | An array of points to be copied from. |
| destination | An array of points to be copied to. |
| length | The number of points that should be copied. |
| sourceIndex | The index in the source array at which copying begins. |
| destinationIndex | The index in the destination array at which copying begins. |

## Notes

Copies a series of X and Y coordinates between arrays of doubles and arrays of XPoints.

The array of doubles is represented as a series of pairs of X and Y coordinates. So the double array should always be twice the length of the XPoint array. Indexes into the arrays are specfied in terms of items in the array. This means that indexes into a double array will be twice as large as those into an XPoint array. Lengths are always specified in terms of numbers of points rather than number of items in the array.

In the case of copying to an array of XPoints, each XPoint in the destination array will be newly created from the source array values overwriting any XPoint which may already be at that location in the array.

