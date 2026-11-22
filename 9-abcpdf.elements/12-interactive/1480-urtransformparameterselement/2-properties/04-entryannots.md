# EntryAnnots Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Annots" entry of the ur transform parameters dictionary object. |

## Notes

Represents the "Annots" entry of the ur transform parameters dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

Items in this array may take one of the following valid values:.

- (PDF
- Create
- Delete
- Modify
- Copy
- Import
- Export
- Online
- SummaryView

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 255, page 472.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=480)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 258, page 571.](https://www.iso.org/standard/63534.html)

The Annots array lists names granting annotation rights such as Create (create annotations) and Modify (edit existing ones).
