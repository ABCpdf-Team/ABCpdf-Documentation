# EntryUseBlackPtComp Property

## Notes

Represents the "UseBlackPtComp" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Default" if no value has been provided.

This item may take one of the following valid values:.

ONOFFDefault

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 164.

UseBlackPtComp controls whether black point compensation is applied when converting colors through an ICC color management pipeline. Black point compensation scales the source color range to map the source black point to the destination black point.

Enabling this entry prevents shadow colours from being clipped when the source color space has a lower minimum density than the destination. It is particularly useful when converting from a wide-gamut profile to a press profile with a limited shadow range.

This entry was added in PDF 2.0. A value of ON enables compensation; OFF disables it; Default defers the decision to the output device or viewer preference.
