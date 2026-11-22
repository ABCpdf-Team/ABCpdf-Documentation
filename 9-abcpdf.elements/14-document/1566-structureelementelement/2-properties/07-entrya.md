# EntryA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "A" entry of the structure element dictionary object. |

## Notes

Represents the "A" entry of the structure element dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [AttributesElements](../../1575-attributeselement/index.md).

If you read the specification you will see that an array of one [AttributesElement](../../1575-attributeselement/index.md) may be represented as a single [AttributesElement](../../1575-attributeselement/index.md) rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=566)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 722.](https://www.iso.org/standard/63534.html)

The A entry holds attribute objects describing visual and structural properties. It may be a single attribute dictionary or stream, or an array interleaving attribute objects with PDF revision numbers.
