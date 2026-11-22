# EntryForm Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Form" entry of the ur transform parameters dictionary object. |

## Notes

Represents the "Form" entry of the ur transform parameters dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

Items in this array may take one of the following valid values:.

- (PDF
- Add
- Delete
- Fill
- Import
- TSV
- Export
- SubmitStandalone
- SpawnTemplate
- BarcodePlaintext
- Online

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 255, page 473.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=481)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 258, page 572.](https://www.iso.org/standard/63534.html)

The Form array lists names granting form-filling rights: FillIn enables filling existing fields; Import enables importing form data; Export enables exporting it.
