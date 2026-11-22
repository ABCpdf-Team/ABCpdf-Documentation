# EntryParentTree Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NumberTreeNodeElement`](../../../07-syntax/1099-numbertreenodeelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "ParentTree" entry of the structure tree root object. |

## Notes

Represents the "ParentTree" entry of the structure tree root object.

It is defined as part of the PDF 1.0 specification.

It contains a [NumberTreeNodeElement](../../../07-syntax/1099-numbertreenodeelement_t_/index.md) containing [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=565)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 720.](https://www.iso.org/standard/63534.html)

The ParentTree entry references the root of a number tree mapping integer keys to structure elements. Every page with tagged content has an entry here, enabling a reader to find the structure elements appearing on that page.
