# EntryChild Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FolderElement`](../index.md) | null | No | Represents the "Child" entry of the folder dictionary object. |

## Notes

Represents the "Child" entry of the folder dictionary object.

It is defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [FolderElement](../index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6c, page 32.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=32)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 159, page 451.](https://www.iso.org/standard/63534.html)

The Child entry references the first child folder of this folder. Following Child and then Next links traverses the entire subtree.
