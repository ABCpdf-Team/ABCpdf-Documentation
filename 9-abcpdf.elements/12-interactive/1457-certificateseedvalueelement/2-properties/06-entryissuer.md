# EntryIssuer Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Issuer" entry of the certificate seed value dictionary object. |

## Notes

Represents the "Issuer" entry of the certificate seed value dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 235, page 450.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=458)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 238, page 547.](https://www.iso.org/standard/63534.html)

Each stream in the Issuer array holds the DER-encoded bytes of an acceptable issuer certificate. The signing certificate must have been issued by one of the listed issuers.
