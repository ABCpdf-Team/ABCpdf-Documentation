# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md) | null | No | Represents the "F" entry of the thread action object. |

## Notes

Represents the "F" entry of the thread action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 205, page 423.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=431)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 209, page 514.](https://www.iso.org/standard/63534.html)

The thread identifier is either an integer (zero-based index into the page's thread list) or a string (matched against the title in the thread's information dictionary). An indirect reference to the thread object is also accepted.
