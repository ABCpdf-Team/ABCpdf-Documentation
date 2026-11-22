# EntryResources Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ResourceElement`](../../../07-syntax/1091-resourceelement/index.md) | null | No | Represents the "Resources" entry of the type 3 font dictionary object. |

## Notes

Represents the "Resources" entry of the type 3 font dictionary object.

It is defined as part of the PDF 1.2 specification.

It contains a [ResourceElement](../../../07-syntax/1091-resourceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=267)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 315.](https://www.iso.org/standard/63534.html)

This entry lists any PDF resources that the glyph content streams in CharProcs may reference, such as ExtGState, ColorSpace, Pattern, or XObject entries.

If the glyph streams use no external resources, this entry should be an empty dictionary. Omitting it entirely was allowed in earlier PDF versions but is not recommended.
