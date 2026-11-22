# EntryURL Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "URL" entry of the developer extensions dictionary object. |

## Notes

Represents the "URL" entry of the developer extensions dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a string representing a PDF string object.

The specification defines this as exensible which means that it may contain entries in addition to those defined in the specification.

In fact almost all objects are extensible but the fact that it is explicitly mentioned, implies that extra entries should be regarded as normal rather than exceptional.

For further details see [The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: Annex E, page 673.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=681).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 50, page 108.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=116)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25b, page 25.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=25)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 49, page 140.](https://www.iso.org/standard/63534.html)

The URL entry provides a URI pointing to documentation or a registry entry for this developer extension. This allows readers and developers to find the specification for an extension they do not already support.
