# EntryProcess Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DeviceNProcessElement`](../../1171-devicenprocesselement/index.md) | null | No | Represents the "Process" entry of the devicen colour space attributes dictionary object. |

## Notes

Represents the "Process" entry of the devicen colour space attributes dictionary object.

It is defined as part of the PDF 1.6 specification.

It contains a [DeviceNProcessElement](../../1171-devicenprocesselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 71, page 162.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=170)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 70, page 204.](https://www.iso.org/standard/63534.html)

The Process dictionary identifies which DeviceN components are standard process colorants and names the process color space to which they belong. Components not listed here are treated as spot colorants.

This entry helps a reader correctly handle the process components using its standard CMYK or other process color pipeline, while routing the remaining components through spot colour handling.
