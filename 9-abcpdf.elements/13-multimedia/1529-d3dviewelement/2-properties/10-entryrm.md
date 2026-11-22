# EntryRM Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RenderModeElement`](../../1535-rendermodeelement/index.md) | null | No | Represents the "RM" entry of the 3d view dictionary object. |

## Notes

Represents the "RM" entry of the 3d view dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a [RenderModeElement](../../1535-rendermodeelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 304, page 522.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=530)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39, page 57.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=57)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 344, page 707.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51f, page 93.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=93)

The RM entry references a render mode dictionary specifying the surface rendering style for this view.
