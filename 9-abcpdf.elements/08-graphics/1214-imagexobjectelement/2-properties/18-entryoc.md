# EntryOC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "OC" entry of the image dictionary object. |

## Notes

Represents the "OC" entry of the image dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

This property may contain one of two different types:.

1\) An [OptionalContentGroupElement](../../1230-optionalcontentgroupelement/index.md).

2\) An [OptionalContentMembershipElement](../../1231-optionalcontentmembershipelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 208.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=216)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 258.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=357)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.](https://www.iso.org/standard/63534.html)

The OC entry associates this image with an optional content group or membership dictionary. When the associated group is off, the image is not rendered. This allows images to be shown or hidden based on the document's optional content configuration.
