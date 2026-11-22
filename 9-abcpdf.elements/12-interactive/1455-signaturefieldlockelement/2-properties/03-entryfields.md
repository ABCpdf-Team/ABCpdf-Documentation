# EntryFields Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Fields" entry of the signature field lock dictionary object. |

## Notes

Represents the "Fields" entry of the signature field lock dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 233, page 447.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=455)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.82, page 43.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=43)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 236, page 541.](https://www.iso.org/standard/63534.html)

The array of field name strings identifies the fields targeted by the Action policy. When Action is All this entry is ignored.
