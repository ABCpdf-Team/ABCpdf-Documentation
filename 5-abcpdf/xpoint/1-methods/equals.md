# Equals Function

Test whether the two points are effectvely the same

## Syntax

*C#*

`bool Equals(`[`XPoint`](../index.md)` other, double epsilon)`  
`bool Equals(`[`XPoint`](../index.md)` other)`  
`override bool Equals(object obj)`

## Params

| Name | Description |
| :---: | --- |
| other | The point to test against. |
| epsilon | The largest difference in values which will still be defined as equal |
| obj | The object to test against. |
| return | Whether the two points are the same. |

## Notes

Test whether the two points are effectively the same.

Points are considered equal if they have the same x amd y coordinates. This represents value equality for the points in question.

The underlying components of an XPoint are represented as floating point numbers. Floating point numbers are subject to rounding errors, so there has to be a degree of latitude when comparing coordinate values. The degree of latitude is, by default, determined by the limitations defined in the PDF Specification. This is, broadly speaking, 5 decimal points so the default epsilon is typically 0.00001. However if you wish to rely on a specific epsilon value you should provide one.
