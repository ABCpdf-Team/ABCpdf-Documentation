# EntryNavigator Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NavigatorElement`](../../2034-navigatorelement/index.md) | null | No | Represents the "Navigator" entry of the collection dictionary object. |

## Notes

Represents the "Navigator" entry of the collection dictionary object.

It is defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [NavigatorElement](../../2034-navigatorelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 155, page 371.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=379)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6, page 29.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=29)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 153, page 446.](https://www.iso.org/standard/63534.html)

The navigator dictionary references the SWF-based component providing a custom portfolio UI. When present and View is set to C the viewer loads and runs the navigator instead of its built-in collection panel.
