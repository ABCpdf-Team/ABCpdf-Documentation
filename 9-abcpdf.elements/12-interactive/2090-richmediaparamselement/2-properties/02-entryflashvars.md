# EntryFlashVars Property

## Notes

Represents the "FlashVars" entry of the richmediaparams dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

This property may contain one of two different types:.

1) A string representing a PDF string object.

The PDF specification states that this item assumes a value of "No data is sent to the Flash Player" if no value has been provided.

2) A StreamElement.

For definitive details see:.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51c, page 90.

The FlashVars string is passed to the SWF application as its initialisation variables, following the standard FlashVars URL-encoded name-value pair convention.
