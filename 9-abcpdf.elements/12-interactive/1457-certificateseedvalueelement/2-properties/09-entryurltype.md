# EntryURLType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "URLType" entry of the certificate seed value dictionary object. |

## Notes

Represents the "URLType" entry of the certificate seed value dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Browser" if no value has been provided.

The specification defines this as exensible which means that it may contain entries in addition to those defined in the specification.

In fact almost all objects are extensible but the fact that it is explicitly mentioned, implies that extra entries should be regarded as normal rather than exceptional.

For further details see [The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: Annex E, page 673.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=681).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 235, page 451.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=459)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 238, page 547.](https://www.iso.org/standard/63534.html)

The URL type name classifies the registration service: Browser opens the URL in a web browser; PKCS7 contacts it programmatically to retrieve a PKCS#7 certificate response.
