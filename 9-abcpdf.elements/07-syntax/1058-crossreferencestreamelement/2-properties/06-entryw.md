# EntryW Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "W" entry of the cross-reference stream dictionary object. |

## Notes

Represents the "W" entry of the cross-reference stream dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 17, page 50.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=58)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 17, page 66.](https://www.iso.org/standard/63534.html)

The W entry is a three-element array giving the byte widths of the three fields in each cross-reference record: the entry type, the main location value (byte offset or object stream number), and the secondary value (generation number or index within an object stream).

A field width of 0 means the field is absent and its default value is used: 1 for the type field and 0 for the other two. The total record width is the sum of the three W values.
