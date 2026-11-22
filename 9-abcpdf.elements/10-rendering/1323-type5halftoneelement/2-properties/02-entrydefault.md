# EntryDefault Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`HalftoneElement`](../../1316-halftoneelement/index.md) | null | No | Represents the "Default" entry of the type 5 halftone dictionary object. |

## Notes

Represents the "Default" entry of the type 5 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an [HalftoneElement](../../1316-halftoneelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 134, page 315.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=323)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 132, page 377.](https://www.iso.org/standard/63534.html)

This entry provides the screen for any colorant that does not have its own named entry in the type 5 dictionary. It acts as a fallback so the viewer always has a valid screen regardless of what colorants are in use.

The sub-dictionary here must be one of types 1, 6, 10, or 16. It cannot itself be a type 5 dictionary. This restriction prevents infinite nesting.

When a colorant name matches another entry in the type 5 dictionary, that named entry takes priority over this one. Default is only used when no matching name is found.
