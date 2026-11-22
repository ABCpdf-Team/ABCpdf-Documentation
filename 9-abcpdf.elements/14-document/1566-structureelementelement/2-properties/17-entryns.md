# EntryNS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NamespaceElement`](../../0030-namespaceelement/index.md) | null | No | Represents the "NS" entry of the structure element dictionary object. |

## Notes

Represents the "NS" entry of the structure element dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a [NamespaceElement](../../0030-namespaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=566)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 722.](https://www.iso.org/standard/63534.html)

The NS entry references the namespace object for the namespace to which this element type belongs. It must be listed in the structure tree root Namespaces array. When absent, the element type is in the standard PDF namespace.
