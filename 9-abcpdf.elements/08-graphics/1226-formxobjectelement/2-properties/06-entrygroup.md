# EntryGroup Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`GroupAttributesElement`](../../../11-transparency/1357-groupattributeselement/index.md) | null | No | Represents the "Group" entry of the form XObject dictionary object. |

## Notes

Represents the "Group" entry of the form XObject dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a [GroupAttributesElement](../../../11-transparency/1357-groupattributeselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 95, page 219.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=227)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.45, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 93, page 269.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 363, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 399, page 812.](https://www.iso.org/standard/63534.html)

The Group entry designates the form as a transparency group. The dictionary specifies the group's color space and whether it is isolated (composites internally without seeing the backdrop) and knockout (later objects knock out earlier ones rather than compositing over them).

A transparency group form allows complex compositing effects to be encapsulated. The form's objects composite together internally, and only the combined result composites into the parent.
