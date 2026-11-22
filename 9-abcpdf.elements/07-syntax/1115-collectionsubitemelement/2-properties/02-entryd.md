# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "D" entry of the collection subitem dictionary object. |

## Notes

Represents the "D" entry of the collection subitem dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A double representing a PDF numeric object.

2\) A string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 49, page 107.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=115)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 47, page 139.](https://www.iso.org/standard/63534.html)

The D entry holds the data value for this collection field. Its type must match the subtype declared for the field in the collection schema: a string for text and date fields, a number for numeric fields, or a boolean for flag fields.
