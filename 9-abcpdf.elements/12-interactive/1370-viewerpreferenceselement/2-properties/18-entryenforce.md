# EntryEnforce Property

## Notes

Represents the "Enforce" entry of the viewer preferences dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains strings, representing PDF name objects.

If provided, items in this array must always take the value "PrintScaling".

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 150, page 362.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.1, page 28.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 147, page 437.

Each name in the array identifies a viewer preference entry whose value the viewer must honour and not allow the user to override. PrintScaling is the only currently defined name.
