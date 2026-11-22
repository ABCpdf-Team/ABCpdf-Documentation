# EntryOC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "OC" entry of the annotation dictionary object. |

## Notes

Represents the "OC" entry of the annotation dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

This property may contain one of two different types:.

1\) An [OptionalContentGroupElement](../../../08-graphics/1230-optionalcontentgroupelement/index.md).

2\) An [OptionalContentMembershipElement](../../../08-graphics/1231-optionalcontentmembershipelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 164, page 384.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=392)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 166, page 466.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

The optional content group or membership dictionary controls whether the annotation is visible. When the referenced OCG or OCMD evaluates to off the annotation is hidden regardless of its own flags.
