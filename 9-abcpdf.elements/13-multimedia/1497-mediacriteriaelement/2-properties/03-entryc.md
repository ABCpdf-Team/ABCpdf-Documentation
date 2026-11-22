# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "C" entry of the media criteria dictionary object. |

## Notes

Represents the "C" entry of the media criteria dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 268, page 489.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=497)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 279, page 614.](https://www.iso.org/standard/63534.html)

The C entry, when true, requires that the viewer support copying of the media data. A rendition will only be selected if the viewer can copy the media to a local temporary file when C is true.
