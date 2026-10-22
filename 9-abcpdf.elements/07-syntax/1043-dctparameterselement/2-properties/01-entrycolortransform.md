# EntryColorTransform Property

## Notes

Represents the "ColorTransform" entry of the dct parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 13, page 35.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 13, page 48.

The ColorTransform entry controls the color space transform applied during JPEG encoding or decoding. A value of 0 means no transform is applied. A value of 1 applies a YCbCr transform for three-component data or a YCCK transform for four-component data.

The default behaviour when this entry is absent depends on the number of components: three-component streams default to transform 1 and one or four-component streams default to transform 0. An explicit entry overrides these defaults.
