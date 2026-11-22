# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DestinationElement`](../../1374-destinationelement/index.md) | null | No | This property represents the "D" entry of the object. |

## Notes

This property represents the "D" entry of the object.

It is a required entry and defined as part of the PDF 1.0 specification.

This property contains a [DestinationElement](../../1374-destinationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; 12.3.2.3 Named Destinations, page 367.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=375)

The D entry holds the destination, either as an inline destination array or as a name or string resolved through the document's named destination trees. An inline array gives the page reference and view parameters directly; a name or string allows the destination to be defined once and referenced from multiple locations.
