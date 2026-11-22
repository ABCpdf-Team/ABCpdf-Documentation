# EntryT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "T" entry of the hide action object. |

## Notes

Represents the "T" entry of the hide action object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of three different types:.

1\) A string representing a PDF string object.

2\) An array which contains [Elements](../../../01-base/1086-element/index.md).

3\) An [AnnotationElement](../../1391-annotationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 210, page 426.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=434)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 214, page 518.](https://www.iso.org/standard/63534.html)

The T entry identifies target annotations by indirect reference, by an array of references, or by a field name string whose widget annotations are all targeted.
