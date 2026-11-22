# EntrySeparationColorNames Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "SeparationColorNames" entry of the trap network appearance stream object. |

## Notes

Represents the "SeparationColorNames" entry of the trap network appearance stream object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 367, page 638.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=646)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 404, page 821.](https://www.iso.org/standard/63534.html)

The SeparationColorNames entry lists the spot color separation names present when trapping was performed. Any change to the spot color set requires trap network regeneration.
