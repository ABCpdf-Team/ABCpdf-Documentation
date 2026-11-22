# EntryNamespaces Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`NamespaceElement`](../../0030-namespaceelement/index.md)`>` | null | No | Represents the "Namespaces" entry of the structure tree root object. |

## Notes

Represents the "Namespaces" entry of the structure tree root object.

It is defined as part of the PDF 2.0 specification.

It contains an array which contains [NamespaceElements](../../0030-namespaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=565)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 720.](https://www.iso.org/standard/63534.html)

The Namespaces entry holds an array of namespace objects used by structure elements. Every namespace referenced by a structure element NS entry must appear in this array.
