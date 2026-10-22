# EntryFunction Property

## Notes

Represents the "Function" entry of the type 5 shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains FunctionElements.

If you read the specification you will see that an array of one FunctionElement may be represented as a single FunctionElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 83, page 193.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 82, page 241.

When present, each vertex carries a single tint value rather than full color components. The function maps that tint to the shading's color space. This replaces the per-vertex component data.
