# EntryParameter1 Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | This property represents the first parameter associated with the destination. |

## Notes

This property represents the first parameter associated with the destination.

The number of parameters and purpose of each varies depending on the [EntryType](02-entrytype.md) of the Destination.

However in general they represent coordinates on the page which need be visible or aligned in some way.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 151, page 366.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=374)

The first parameter of the destination, whose meaning depends on the Target type. For XYZ it is the left edge coordinate; for FitH and FitBH it is the top edge coordinate; for FitR it is the left edge of the fit rectangle.
