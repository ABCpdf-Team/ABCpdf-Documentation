# EntryDR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ResourceElement`](../../../07-syntax/1091-resourceelement/index.md) | null | No | Represents the "DR" entry of the interactive form dictionary object. |

## Notes

Represents the "DR" entry of the interactive form dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [ResourceElement](../../../07-syntax/1091-resourceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 218, page 431.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=439)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 224, page 525.](https://www.iso.org/standard/63534.html)

The default resources dictionary is shared across all fields and used when auto-generating field appearances. It typically contains at minimum the fonts referenced by field DA strings.
