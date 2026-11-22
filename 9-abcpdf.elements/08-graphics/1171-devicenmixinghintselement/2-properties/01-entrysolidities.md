# EntrySolidities Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Solidities" entry of the devicen mixing hints dictionary object. |

## Notes

Represents the "Solidities" entry of the devicen mixing hints dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 73, page 163.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=171)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 72, page 206.](https://www.iso.org/standard/63534.html)

The Solidities dictionary maps colorant names to fractional opacity values at full tint. A value of 1.0 means the ink is fully opaque at 100% coverage; lower values indicate a degree of transparency that allows underlying inks to show through.

Solidity values are used by soft-proofing tools to simulate overprint effects when inks are applied on top of each other.
