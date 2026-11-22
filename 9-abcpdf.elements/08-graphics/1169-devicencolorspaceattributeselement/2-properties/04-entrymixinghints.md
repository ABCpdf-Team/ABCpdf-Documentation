# EntryMixingHints Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DeviceNMixingHintsElement`](../../1171-devicenmixinghintselement/index.md) | null | No | Represents the "MixingHints" entry of the devicen colour space attributes dictionary object. |

## Notes

Represents the "MixingHints" entry of the devicen colour space attributes dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a [DeviceNMixingHintsElement](../../1171-devicenmixinghintselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 71, page 162.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=170)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 70, page 204.](https://www.iso.org/standard/63534.html)

The MixingHints dictionary provides advisory data for soft-proofing the DeviceN ink combination on screen. It includes solidities, printing order, and dot gain information.

These hints are used by proofing software to simulate the visual appearance of the ink mix. They do not affect the formal color definition and may be ignored by a conforming reader.
