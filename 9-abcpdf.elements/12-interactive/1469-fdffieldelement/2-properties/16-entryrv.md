# EntryRV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "RV" entry of the fdf field dictionary object. |

## Notes

Represents the "RV" entry of the fdf field dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [TextStreamElement](../../../07-syntax/0018-textstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 246, page 462.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=470)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 249, page 560.](https://www.iso.org/standard/63534.html)

The rich value replaces the target field's RV entry, providing formatted rich-text content that the viewer renders when rich-text display is supported.
