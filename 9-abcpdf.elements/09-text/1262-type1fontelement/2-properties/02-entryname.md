# EntryName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Name" entry of the type 1 font dictionary object. |

## Notes

Represents the "Name" entry of the type 1 font dictionary object.

It is defined as part of the PDF 1.0 specification. It was marked obsolescent in PDF 1.7 and deprecated in PDF 2.0.

It contains a string representing a PDF name object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 254.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=262)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 310.](https://www.iso.org/standard/63534.html)

This entry was part of the original PDF 1.0 font model where the Name key identified the font resource in a page's resource dictionary. Later versions of the PDF specification made this usage obsolete and it was formally deprecated in PDF 2.0.

When this entry is present it should match the key used to reference the font in the page resource dictionary. New documents should not include it.
