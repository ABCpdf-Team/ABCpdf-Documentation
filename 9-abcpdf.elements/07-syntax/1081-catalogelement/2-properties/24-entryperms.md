# EntryPerms Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PermissionsElement`](../../../12-interactive/1485-permissionselement/index.md) | null | No | Represents the "Perms" entry of the catalog dictionary object. |

## Notes

Represents the "Perms" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a [PermissionsElement](../../../12-interactive/1485-permissionselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 75.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=83)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 100.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The Perms entry in the catalog references a permissions dictionary that specifies cryptographic permissions controlling document-level operations. These permissions are enforced independently of the encryption dictionary's P flags.
