# EntryPrintingOrder Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "PrintingOrder" entry of the devicen mixing hints dictionary object. |

## Notes

Represents the "PrintingOrder" entry of the devicen mixing hints dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 73, page 163.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=171)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 72, page 206.](https://www.iso.org/standard/63534.html)

The PrintingOrder array lists colorant names in the sequence they are physically applied to the substrate. The first colorant in the list is applied first; subsequent colorants are laid on top.

Printing order affects the visual result when semi-transparent inks overprint. Correct ordering in the hints allows proofing software to simulate the appearance accurately.
