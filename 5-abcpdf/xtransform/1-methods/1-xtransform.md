# XTransform Constructor

XTransform Constructor.

## Syntax

*C#*

[`XTransform`](../index.md)`()`  
[`XTransform`](../index.md)`(string text)`  
[`XTransform`](../index.md)`(double[] entries)`  
[`XTransform`](../index.md)`(Matrix matrix)`  
[`XTransform`](../index.md)`(double m11, double m12, double m21, double m22, double tx, double ty)`  
[`XTransform`](../index.md)`(XRect src, XRect dst)`

## Params

| Name | Description |
| :---: | --- |
| text | A string defining the initial rectangle in the format returned by the [String](../2-properties/string.md) property. |
| matrix | A System.Drawing.Drawing2D Matrix object specifying the values for the transform. |
| entries | An array of doubles specifying the values for the matrix. These are in the order m11, m12, m21, m22, tx and ty. |
| m11 | Matrix entry 1,1. |
| m12 | Matrix entry 1,2. |
| m21 | Matrix entry 2,1. |
| m22 | Matrix entry 2,2. |
| tx | The x translation to be applied. |
| ty | The y translation to be applied. |
| src | The source rectangle. |
| dst | The source rectangle. |

## Notes

These methods construct an XTransform object.

The default constructor creates an identity transform.

The constructor which takes two rectangles creates a transform which maps the source rectangle to the destination rectangle using positive scale values.
