# Copy Function

Copies a series of X and Y coordinates between arrays of doubles and arrays of XPoints

## Syntax

*C#*

`static void Copy(`[`XPoint`](../index.md)`[] sourceArray, double[] destinationArray, int pointLength)`  
`static void Copy(`[`XPoint`](../index.md)`[] sourceArray, int sourceIndex, double[] destinationArray, int destinationIndex, int pointLength)`  
`static void Copy(double[] sourceArray, `[`XPoint`](../index.md)`[] destinationArray, int pointLength)`  
`static void Copy(double[] sourceArray, int sourceIndex, `[`XPoint`](../index.md)`[] destinationArray, int destinationIndex, int pointLength)`

## Params

| Name | Description |
| :---: | --- |
| sourceArray | An array of points to be copied from. |
| destinationArray | An array of points to be copied to. |
| pointLength | The number of points that should be copied. |
| sourceIndex | The index in the source array at which copying begins. |
| destinationIndex | The index in the destination array at which copying begins. |

## Notes

Copies a series of X and Y coordinates between arrays of doubles and arrays of XPoints.

The array of doubles is represented as a series of pairs of X and Y coordinates. So the double array should always be twice the length of the XPoint array. Indexes into the arrays are specified in terms of items in the array. This means that indexes into a double array will be twice as large as those into an XPoint array. Lengths are always specified in terms of numbers of points rather than number of items in the array.

In the case of copying to an array of XPoints, each XPoint in the destination array will be newly created from the source array values overwriting any XPoint which may already be at that location in the array.
