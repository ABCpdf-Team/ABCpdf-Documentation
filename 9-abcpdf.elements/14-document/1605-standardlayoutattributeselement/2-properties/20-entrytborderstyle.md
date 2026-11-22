# EntryTBorderStyle Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "TBorderStyle" entry of the standard layout attributes object. |

## Notes

Represents the "TBorderStyle" entry of the standard layout attributes object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains an array which contains strings, representing PDF name objects.

The PDF specification states that items in this array assume a value of "None" if no value has been provided.

Items in this array may take one of the following valid values:.

- None
- Hidden
- Dotted
- Dashed
- Solid
- Double
- Groove
- Ridge
- Inset
- Outset

.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 343, page 597.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=605)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 378, page 770.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 344, page 600.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=608)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 379, page 774.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 345, page 604.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=612)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 380, page 778.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 346, page 608.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=616)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 381, page 782.](https://www.iso.org/standard/63534.html)

The TBorderStyle entry specifies the border style for a table cell, using the same values as BorderStyle. It is separate to allow table cell borders to be controlled independently.
