# EntryBefore Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Before" entry of the fdf javascript dictionary object. |

## Notes

Represents the "Before" entry of the fdf javascript dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [TextStreamElement](../../../07-syntax/0018-textstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 245, page 461.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=469)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 248, page 558.](https://www.iso.org/standard/63534.html)

The Before script runs immediately before the field values are imported. It can set up state, validate pre-conditions, or prepare the document for the incoming data.
