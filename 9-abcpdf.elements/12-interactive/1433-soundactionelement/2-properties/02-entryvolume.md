# EntryVolume Property

## Notes

Represents the "Volume" entry of the sound action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 1.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 208, page 425.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 212, page 516.

The volume is a number between -1.0 and 1.0 where 1.0 is maximum volume. Values outside this range are clamped by the viewer.
