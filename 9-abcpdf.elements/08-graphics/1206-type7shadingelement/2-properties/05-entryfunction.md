# EntryFunction Property

## Notes

Represents the "Function" entry of the type 7 shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains FunctionElements.

If you read the specification you will see that an array of one FunctionElement may be represented as a single FunctionElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 198.

When present, the Function entry replaces the four corner color components with scalar tint values, which the function converts to the shading's color space.
