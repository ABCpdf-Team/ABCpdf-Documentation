# EntryOC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "OC" entry of the form XObject dictionary object. |

## Notes

Represents the "OC" entry of the form XObject dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

This property may contain one of two different types:.

1\) An [OptionalContentGroupElement](../../1230-optionalcontentgroupelement/index.md).

2\) An [OptionalContentMembershipElement](../../1231-optionalcontentmembershipelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 95, page 219.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=227)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.45, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 93, page 270.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 363, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 399, page 812.](https://www.iso.org/standard/63534.html)

The OC entry associates this form with an optional content group or membership dictionary. When the group is off, the form is not painted. This allows entire form XObjects to be hidden or shown as a unit based on the optional content configuration.
