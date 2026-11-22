# EntryFields Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Fields" entry of the fieldmdp transform parameters dictionary object. |

## Notes

Represents the "Fields" entry of the fieldmdp transform parameters dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 256, page 473.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=481)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 259, page 573.](https://www.iso.org/standard/63534.html)

The array of field name strings lists the fields whose values are included in or excluded from the signature, depending on the Action value.
