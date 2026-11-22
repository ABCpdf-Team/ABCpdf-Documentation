# EntryDParts Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "DParts" entry of the dpart dictionary object. |

## Notes

Represents the "DParts" entry of the dpart dictionary object.

It is defined as part of the PDF 2.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 409, page 829.](https://www.iso.org/standard/63534.html)

The DParts entry holds an array of indirect references to child document part nodes. The order defines the sequence of parts within this level of the hierarchy.
