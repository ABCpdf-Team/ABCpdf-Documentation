# EntryTR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "TR" entry of the soft-mask dictionary object. |

## Notes

Represents the "TR" entry of the soft-mask dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

The PDF specification states that this item assumes a value of "Identity" if no value has been provided.

If provided, this item must always take the value "Identity".

2\) A [FunctionElement](../../../07-syntax/1101-functionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 144, page 347.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=355)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 142, page 416.](https://www.iso.org/standard/63534.html)
