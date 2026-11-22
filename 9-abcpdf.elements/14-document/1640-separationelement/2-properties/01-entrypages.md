# EntryPages Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`PageObjectElement`](../../../07-syntax/1085-pageobjectelement/index.md)`>` | null | No | Represents the "Pages" entry of the separation dictionary object. |

## Notes

Represents the "Pages" entry of the separation dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [PageObjectElements](../../../07-syntax/1085-pageobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 364, page 632.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=640)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 400, page 813.](https://www.iso.org/standard/63534.html)

The Pages entry holds an array of indirect references to all separation page objects for the composite page. This links all separations together so any one separation can locate the others.
