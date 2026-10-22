# EntryFf Property

## Notes

Represents the "Ff" entry of the signature field time stamp dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 447.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 542.

Bit 1 of the Ff integer marks the URL as mandatory. When set the signing application must contact exactly this TSA; when clear the URL is a suggestion.
