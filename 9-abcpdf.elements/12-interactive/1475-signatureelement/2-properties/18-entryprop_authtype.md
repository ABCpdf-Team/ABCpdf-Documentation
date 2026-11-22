# EntryProp_AuthType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Prop_AuthType" entry of the signature dictionary object. |

## Notes

Represents the "Prop_AuthType" entry of the signature dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- PIN
- Password
- Fingerprint

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 469.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=477)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 567.](https://www.iso.org/standard/63534.html)

The Prop_AuthType name records how the signer authenticated before signing, such as by entering a PIN, by biometric verification, or by single sign-on.
