# EntryListMode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "ListMode" entry of the optional content configuration dictionary object. |

## Notes

Represents the "ListMode" entry of the optional content configuration dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "AllPages" if no value has been provided.

This item may take one of the following valid values:.

- AllPages
- VisiblePages

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 230.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=238)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 282.](https://www.iso.org/standard/63534.html)

ListMode controls which groups are shown in the viewer's layer panel for this configuration. AllPages shows every group; VisiblePages shows only groups that affect content on the currently visible pages.
