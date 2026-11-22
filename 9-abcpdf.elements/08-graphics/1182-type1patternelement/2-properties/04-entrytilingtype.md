# EntryTilingType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "TilingType" entry of the type 1 pattern dictionary object. |

## Notes

Represents the "TilingType" entry of the type 1 pattern dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 75, page 175.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=183)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 74, page 218.](https://www.iso.org/standard/63534.html)

The tiling type controls how the renderer adjusts the pattern cell to fit device pixel boundaries. Type 1 (ConstantSpacing) distorts the cell slightly to maintain exact spacing. Type 2 (NoDistortion) preserves the cell geometry at the cost of variable spacing. Type 3 (ConstantSpacingFasterTiling) uses a faster algorithm that may adjust both cell and spacing.
