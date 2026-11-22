# EntryRecipients Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Recipients" entry of the public-key security handler encryption dictionary object. |

## Notes

Represents the "Recipients" entry of the public-key security handler encryption dictionary object.

It is defined as part of the PDF 1.3 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 23, page 65.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=73)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 23, page 86.](https://www.iso.org/standard/63534.html)

The Recipients entry holds an array of byte strings, each containing a DER-encoded CMS EnvelopedData structure. Each structure wraps the file encryption key encrypted with one recipient's X.509 public key certificate.

A reader with access to a private key matching one of the recipient certificates decrypts that EnvelopedData structure to recover the file encryption key. All recipients share the same encryption key; only the key-wrapping differs per recipient.
