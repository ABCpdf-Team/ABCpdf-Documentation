# EntryDotGain Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "DotGain" entry of the devicen mixing hints dictionary object. |

## Notes

Represents the "DotGain" entry of the devicen mixing hints dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 73, page 164.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=172)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 72, page 206.](https://www.iso.org/standard/63534.html)

The DotGain dictionary maps colorant names to transfer functions that describe how the printed dot area grows relative to the requested tint. Dot gain is a physical property of ink spreading on the substrate.

Dot gain functions are used to compensate for tonal distortion in halftone output. Proofing software may apply them to produce a simulation that accounts for the expected gain on the target substrate.
