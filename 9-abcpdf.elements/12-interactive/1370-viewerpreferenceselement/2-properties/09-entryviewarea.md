# EntryViewArea Property

## Notes

Represents the "ViewArea" entry of the viewer preferences dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification. It was deprecated in PDF 2.0.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "CropBox" if no value has been provided.

This item may take one of the following valid values:.

MediaBoxCropBoxArtBoxTrimBoxBleedBox

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 150, page 363.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.1, page 28.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 147, page 436.

Selects which page bounding box defines the area displayed in the viewer. The default is CropBox. This entry and its siblings (ViewClip, PrintArea, PrintClip) each control a different stage of page presentation.
