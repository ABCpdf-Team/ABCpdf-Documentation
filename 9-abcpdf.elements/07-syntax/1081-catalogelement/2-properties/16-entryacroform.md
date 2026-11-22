# EntryAcroForm Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`InteractiveFormElement`](../../../12-interactive/1439-interactiveformelement/index.md) | null | No | Represents the "AcroForm" entry of the catalog dictionary object. |

## Notes

Represents the "AcroForm" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains an [InteractiveFormElement](../../../12-interactive/1439-interactiveformelement/index.md).

The [InteractiveFormElement](../../../12-interactive/1439-interactiveformelement/index.md) contains the root of any field information for the document.

Fields are represented as an abstract tree structure of [FieldElements](../../../12-interactive/1440-fieldelement/index.md), spanning the entire document.

Each field has a name and also a full name (like a file path) which tells you how to get to that field from the top level of the tree.

Fields are abstract - they hold a name and value - but they do not explictly have any ability to display themselves.

So to make them visible, leaf [FieldElements](../../../12-interactive/1440-fieldelement/index.md) need to be linked to [WidgetAnnotationElements](../../../12-interactive/1416-widgetannotationelement/index.md) placed on individual pages of the document.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 74.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=82)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 99.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The AcroForm entry references the document's interactive form dictionary, which lists all form fields, their default values, shared formatting properties, and the document's default resource dictionary for form appearance streams.
