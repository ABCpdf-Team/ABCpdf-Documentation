# EntryDest Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Dest" entry of the link annotation object. |

## Notes

Represents the "Dest" entry of the link annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of three different types:.

1\) A string representing a PDF name object.

2\) A string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

3\) A [DestinationElement](../../../07-syntax/1374-destinationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 173, page 395.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=403)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 176, page 479.](https://www.iso.org/standard/63534.html)

A destination may be an explicit array or a string naming an entry in the document's named destination tree. Named destinations are more robust to page reordering.
