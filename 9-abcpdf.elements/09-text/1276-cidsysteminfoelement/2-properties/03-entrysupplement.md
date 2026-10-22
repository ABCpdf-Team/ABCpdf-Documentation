# EntrySupplement Property

## Notes

Represents the "Supplement" entry of the cidsysteminfo dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 116, page 269.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 114, page 326.

Higher supplement numbers represent extended versions of the same collection that add more CIDs. A CIDFont with a given supplement supports all CIDs defined in that supplement and all lower supplements.

For CMap compatibility, the CMap supplement must be less than or equal to the CIDFont supplement. A CMap that references CIDs beyond what the CIDFont supports will produce missing glyphs.
