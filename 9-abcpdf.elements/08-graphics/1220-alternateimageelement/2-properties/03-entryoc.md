# EntryOC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OptionalContentGroupElement`](../../1230-optionalcontentgroupelement/index.md) | null | No | Represents the "OC" entry of the alternate image dictionary object. |

## Notes

Represents the "OC" entry of the alternate image dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains an [OptionalContentGroupElement](../../1230-optionalcontentgroupelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 91, page 212.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=220)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 89, page 261.](https://www.iso.org/standard/63534.html)

The OC entry associates this alternate with an optional content group or membership dictionary. The alternate is a candidate for use only when the associated content group is on.
