# EntryOP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "OP" entry of the rendition action object. |

## Notes

Represents the "OP" entry of the rendition action object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 4.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 214, page 428.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=436)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 218, page 520.](https://www.iso.org/standard/63534.html)

The operation code selects the command: 0 plays rendition R on screen AN; 1 stops the rendition; 2 pauses; 3 resumes; 4 executes the JS script.
