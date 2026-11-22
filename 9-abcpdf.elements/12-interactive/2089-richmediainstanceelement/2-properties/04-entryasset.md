# EntryAsset Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md) | null | No | Represents the "Asset" entry of the richmediainstance dictionary object. |

## Notes

Represents the "Asset" entry of the richmediainstance dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51b, page 89.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=89)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 343, page 706.](https://www.iso.org/standard/63534.html)

The asset entry is an indirect reference to the file specification of the media resource in the content's Assets name tree.
