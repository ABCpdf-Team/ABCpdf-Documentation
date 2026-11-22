# EntryLang Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Lang" entry of the optional content usage language dictionary object. |

## Notes

Represents the "Lang" entry of the optional content usage language dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The Lang entry holds a language tag conforming to RFC 3066, identifying the language of the optional content group's content. Viewers that support language-based automatic state setting compare this tag against the viewer's locale.
