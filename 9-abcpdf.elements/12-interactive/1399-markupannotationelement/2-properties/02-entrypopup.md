# EntryPopup Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PopUpAnnotationElement`](../../1414-popupannotationelement/index.md) | null | No | Represents the "Popup" entry of the markup annotation object. |

## Notes

Represents the "Popup" entry of the markup annotation object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a [PopUpAnnotationElement](../../1414-popupannotationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 170, page 391.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=399)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.21, page 38.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=38)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 332, page 695.](https://www.iso.org/standard/63534.html)

The pop-up annotation referenced here is subordinate to this markup annotation. Opening or closing the pop-up through the viewer UI updates the Open entry in the pop-up annotation dictionary.
