# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "P" entry of the structure element dictionary object. |

## Notes

Represents the "P" entry of the structure element dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A [StructureElementElement](../index.md).

2\) A [StructureTreeRootElement](../../1565-structuretreerootelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=566)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 721.](https://www.iso.org/standard/63534.html)

The P entry references the parent structure element. Every structure element except the root has a parent. Processors traverse the parent chain to determine the context of an element.
