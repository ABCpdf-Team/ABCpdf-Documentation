# EntryOpenAction Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "OpenAction" entry of the catalog dictionary object. |

## Notes

Represents the "OpenAction" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.1 specification.

This property may contain one of two different types:.

1\) An [ActionElement](../../../12-interactive/1422-actionelement/index.md).

2\) A [DestinationElement](../../1374-destinationelement/index.md).

When the document is opened the specified action or destination will be triggered.

This can be useful if you would like the document to open at a specific page or with a particular view.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 74.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=82)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 99.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The OpenAction entry specifies an action or destination to activate when the document is opened. This is commonly used to display a specific page, run a JavaScript action, or navigate to a named destination.
