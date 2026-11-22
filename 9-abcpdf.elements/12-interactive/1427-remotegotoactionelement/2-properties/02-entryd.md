# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "D" entry of the remote go-to action object. |

## Notes

Represents the "D" entry of the remote go-to action object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of three different types:.

1\) A string representing a PDF name object.

2\) A string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

3\) A [DestinationElement](../../../07-syntax/1374-destinationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 200, page 419.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=427)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 203, page 508.](https://www.iso.org/standard/63534.html)

The destination in the external file, given as an explicit destination array or a name string that must exist in the target file's named destinations tree.
