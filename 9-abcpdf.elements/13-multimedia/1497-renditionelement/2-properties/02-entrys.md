# EntryS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "S" entry of the rendition dictionary object. |

## Notes

Represents the "S" entry of the rendition dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- MR
- SR

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 266, page 489.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=497)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 277, page 613.](https://www.iso.org/standard/63534.html)

The S entry names the rendition subtype: MR for a media rendition that directly references media content, or SR for a selector rendition that holds an ordered list of candidate renditions.
