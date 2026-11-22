# EntryGroup Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`GroupAttributesElement`](../../../11-transparency/1357-groupattributeselement/index.md) | null | No | Represents the "Group" entry of the page object object. |

## Notes

Represents the "Group" entry of the page object object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a [GroupAttributesElement](../../../11-transparency/1357-groupattributeselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 78.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=86)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 104.](https://www.iso.org/standard/63534.html)

The Group entry references a group attributes dictionary that designates the page as a transparency group. This controls how the page's content composites when the page is used as a source in a transparency group rendering.
