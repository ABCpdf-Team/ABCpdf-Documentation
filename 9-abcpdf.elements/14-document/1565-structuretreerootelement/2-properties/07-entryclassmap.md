# EntryClassMap Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`AttributesElement`](../../1575-attributeselement/index.md)`>>` | null | No | Represents the "ClassMap" entry of the structure tree root object. |

## Notes

Represents the "ClassMap" entry of the structure tree root object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=565)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 720.](https://www.iso.org/standard/63534.html)

The ClassMap entry holds a dictionary mapping class names to attribute objects. Structure elements reference class names in their C entries to inherit the corresponding attributes.
