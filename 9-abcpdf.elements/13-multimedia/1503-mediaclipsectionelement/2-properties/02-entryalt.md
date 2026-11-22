# EntryAlt Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Alt" entry of the media clip section dictionary object. |

## Notes

Represents the "Alt" entry of the media clip section dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 277, page 495.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=503)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 288, page 620.](https://www.iso.org/standard/63534.html)

The Alt entry holds an array of alternate text descriptions for this clip section, alternating between language tags and description text strings for accessibility in multiple languages.
