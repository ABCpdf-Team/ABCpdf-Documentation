# EntryNext Property

## Notes

Represents the "Next" entry of the action dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains an array which contains ActionElements.

If you read the specification you will see that an array of one ActionElement may be represented as a single ActionElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 193, page 414.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 196, page 503.

After the current action completes the viewer executes the action or actions in Next in sequence. Next can be a single action dictionary or an array, enabling complex multi-step action chains.
