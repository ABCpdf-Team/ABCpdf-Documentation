# EntryFont Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`FontElement`](../../../09-text/1262-fontelement/index.md)`>` | null | No | Represents the "Font" entry of the resource dictionary object. |

## Notes

Represents the "Font" entry of the resource dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 33, page 83.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=91)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 34, page 112.](https://www.iso.org/standard/63534.html)

The Font entry maps resource names to font dictionaries. A content stream selects a named font using the Tf operator, which also sets the current font size. Every text-painting operation requires a current font set through this mechanism.
