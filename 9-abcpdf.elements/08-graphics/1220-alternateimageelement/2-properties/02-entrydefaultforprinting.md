# EntryDefaultForPrinting Property

## Notes

Represents the "DefaultForPrinting" entry of the alternate image dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 91, page 212.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 89, page 261.

When DefaultForPrinting is true, this alternate is the preferred choice for printing output. Only one alternate in a given Alternates array should carry this flag. A conforming print processor may use this alternate instead of the parent image.
