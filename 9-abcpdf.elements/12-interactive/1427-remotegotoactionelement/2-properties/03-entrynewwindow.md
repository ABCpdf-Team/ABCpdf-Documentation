# EntryNewWindow Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "NewWindow" entry of the remote go-to action object. |

## Notes

Represents the "NewWindow" entry of the remote go-to action object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 200, page 419.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=427)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 203, page 509.](https://www.iso.org/standard/63534.html)

When true the viewer should open the external file in a new window; when false it may open it in the current window. When absent the viewer uses its own preference.
