# EntryN Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "N" entry of the named action object. |

## Notes

Represents the "N" entry of the named action object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- NextPage
- PrevPage
- FirstPage
- LastPage

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 212, page 427.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=435)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 216, page 518.](https://www.iso.org/standard/63534.html)

The name string identifies the operation to perform. PDF defines standard names: NextPage, PrevPage, FirstPage, LastPage, Find, GoToPage, and Print. Viewers may define additional private names.
