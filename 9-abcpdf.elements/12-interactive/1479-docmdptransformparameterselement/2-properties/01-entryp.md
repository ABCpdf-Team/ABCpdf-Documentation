# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "P" entry of the docmdp transform parameters dictionary object. |

## Notes

Represents the "P" entry of the docmdp transform parameters dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 1 and a maximum of 3.

The PDF specification states that this item assumes a value of 2 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 254, page 471.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=479)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 257, page 570.](https://www.iso.org/standard/63534.html)

The permission level controls which modifications do not invalidate the certification signature: 1 means no modifications are permitted; 2 permits form filling and signing new fields; 3 additionally permits annotation creation and deletion.
