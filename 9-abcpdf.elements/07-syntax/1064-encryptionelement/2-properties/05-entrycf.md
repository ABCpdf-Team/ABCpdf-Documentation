# EntryCF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "CF" entry of the encryption dictionary object. |

## Notes

Represents the "CF" entry of the encryption dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 20, page 56.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=64)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.18, page 14.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=14)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 20, page 72.](https://www.iso.org/standard/63534.html)

The CF entry holds a dictionary of named crypt filter definitions. Each key is a crypt filter name and each value is a crypt filter dictionary specifying the algorithm and key length for that filter.

Crypt filters allow different parts of the document - strings, streams, and embedded files - to be encrypted with different algorithms or keys, or to be left unencrypted selectively.
