# EntryDeviceColorant Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "DeviceColorant" entry of the separation dictionary object. |

## Notes

Represents the "DeviceColorant" entry of the separation dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

2\) A string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 364, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 400, page 813.](https://www.iso.org/standard/63534.html)

The DeviceColorant entry names the device colorant this separation carries, such as Cyan, Magenta, Yellow, Black, or a spot color name, identifying which ink channel it represents.
