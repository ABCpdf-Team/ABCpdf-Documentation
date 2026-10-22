# EntryFunction Property

## Notes

Represents the "Function" entry of the type 2 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains FunctionElements.

If you read the specification you will see that an array of one FunctionElement may be represented as a single FunctionElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 80, page 186.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 79, page 231.

The Function maps a scalar parameter in the range given by Domain to color component values in the shading's color space. It must produce exactly as many outputs as there are components in the color space.
