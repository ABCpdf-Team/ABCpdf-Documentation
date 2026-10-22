# EntryUCR2 Property

## Notes

Represents the "UCR2" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

This property may contain one of two different types:.

1) A string representing a PDF name object.

If provided, this item must always take the value "Default".

2) A FunctionElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.

UCR2 supersedes UCR in PDF 1.3 and later. It performs the same undercolor-removal function as UCR but is used by conforming readers that support the updated color model introduced at that version.

When both UCR and UCR2 are present, UCR2 takes precedence for conforming readers that support it.
