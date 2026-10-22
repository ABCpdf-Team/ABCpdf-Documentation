# EntrySI Property

## Notes

Represents the "SI" entry of the web capture content set object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains SourceInformationElements.

If you read the specification you will see that an array of one SourceInformationElement may be represented as a single SourceInformationElement rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 352, page 622.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 388, page 801.

The SI entry holds a source information dictionary or array of them, each describing one source URL from which content was captured.
