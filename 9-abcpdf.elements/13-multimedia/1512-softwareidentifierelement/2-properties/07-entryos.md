# EntryOS Property

## Notes

Represents the "OS" entry of the software identifier dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

The PDF specification states that items in this array assume a value of "an empty array" if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 292, page 504.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 303, page 631.

The OS entry holds an array of operating system identifier strings listing the systems on which this software runs. The criteria system uses this to filter player candidates by operating system.
