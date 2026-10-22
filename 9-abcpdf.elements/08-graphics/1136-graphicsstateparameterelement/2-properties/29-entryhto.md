# EntryHTO Property

## Notes

Represents the "HTO" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 164.

The HTO entry specifies a halftone origin, providing an (x, y) offset in device space for the halftone screen. This shifts the phase of the halftone pattern, allowing screens to be aligned across separated color planes or across tiled areas.

Screen alignment is important in multi-colorant printing to avoid moir� patterns. A consistent origin across all colorant screens, combined with appropriate screen angles, reduces visible interference.

This entry was introduced in PDF 2.0. When absent, the device uses its default halftone origin.
