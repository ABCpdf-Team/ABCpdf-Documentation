# EntryPatternType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "PatternType" entry of the type 1 pattern dictionary object. |

## Notes

Represents the "PatternType" entry of the type 1 pattern dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

This item must always be provided and must always take the value "1".

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 75, page 174.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=182)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 74, page 218.](https://www.iso.org/standard/63534.html)

The PatternType value identifies this as a Type 1 (tiling) pattern. This entry distinguishes tiling patterns from Type 2 shading patterns and is used by a conforming reader to select the appropriate rendering algorithm.
