# EntryTR2 Property

## Notes

Represents the "TR2" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification. It was deprecated in PDF 2.0.

This property may contain one of two different types:.

1) A string representing a PDF name object.

This item may take one of the following valid values:.

IdentityDefault.

2) An array which contains FunctionElements.

If you read the specification you will see that an array of one FunctionElement may be represented as a single FunctionElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.

TR2 supersedes TR in PDF 1.3 and later and accepts the same function types, plus the name Default to restore the output device's default transfer functions.

When both TR and TR2 are present, conforming readers that support TR2 use it in place of TR.
