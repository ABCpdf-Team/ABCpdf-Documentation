# EntryPC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "PC" entry of the 3d cross section dictionary object. |

## Notes

Represents the "PC" entry of the 3d cross section dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 311, page 532.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=540)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 322, page 665.](https://www.iso.org/standard/63534.html)

The PC entry holds the cutting plane colour as a three-element DeviceRGB array. This colour fills the cutting plane surface.
