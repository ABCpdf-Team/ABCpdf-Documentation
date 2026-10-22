# EntrySMaskInData Property

## Notes

Represents the "SMaskInData" entry of the image dictionary object.

It is defined as part of the PDF 1.5 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 208.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 257.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.

SMaskInData indicates whether soft-mask data is embedded within the image stream rather than provided as a separate image. A value of 0 means no embedded mask. A value of 1 means the last channel in the stream carries premultiplied alpha. A value of 2 means the last channel carries unassociated alpha.

This entry is used only for JPX-encoded images that support embedded alpha channels.
