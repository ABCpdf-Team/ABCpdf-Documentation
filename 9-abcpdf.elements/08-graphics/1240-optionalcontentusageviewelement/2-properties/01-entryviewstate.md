# EntryViewState Property

## Notes

Represents the "ViewState" entry of the optional content usage view dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "OFF" if no value has been provided.

This item may take one of the following valid values:.

ONOFF

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.

ViewState holds ON or OFF to indicate whether this group should be visible in an interactive viewer. A conforming viewer that applies usage-based automatic state setting uses this value when a View event occurs.
