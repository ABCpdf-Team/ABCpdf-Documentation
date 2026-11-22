# EntryFilter Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Filter" entry of the signature dictionary object. |

## Notes

Represents the "Filter" entry of the signature dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The specification defines this as exensible which means that it may contain entries in addition to those defined in the specification.

In fact almost all objects are extensible but the fact that it is explicitly mentioned, implies that extra entries should be regarded as normal rather than exceptional.

For further details see [The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: Annex E, page 673.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=681).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

The filter name identifies the security handler that produced and should verify this signature. Verifiers must refuse to validate the signature if they do not support the named handler.
