# EntryBitsPerComponent Property

## Notes

Represents the "BitsPerComponent" entry of the image dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 207.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 256.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.

BitsPerComponent sets the number of bits encoding each color component. Higher values allow more tonal levels per channel. The value must be consistent with the color space and any filters applied to the stream.

For JPEG (DCT) encoded images, BitsPerComponent must be 8. For JBIG2 encoded data, it must be 1. For JPX (JPEG 2000) data, the value is taken from the stream and must be absent or consistent with the stream.
