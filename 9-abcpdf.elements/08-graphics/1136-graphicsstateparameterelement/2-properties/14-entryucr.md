# EntryUCR Property

## Notes

Represents the "UCR" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a FunctionElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.

The undercolor-removal function maps a gray-component value to an amount subtracted from the cyan, magenta, and yellow components when converting to CMYK. It counterbalances the black ink added by the black-generation function.

UCR ensures that areas with significant black ink do not also carry full CMY inks, which would result in excessive total ink coverage and potential drying or trapping issues in print production.
