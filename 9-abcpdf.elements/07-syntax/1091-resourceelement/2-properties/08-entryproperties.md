# EntryProperties Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Properties" entry of the resource dictionary object. |

## Notes

Represents the "Properties" entry of the resource dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 33, page 84.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=92)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 34, page 112.](https://www.iso.org/standard/63534.html)

The Properties entry maps resource names to property list dictionaries. Content streams reference these dictionaries using marked-content operators (BDC, BMC) to associate logical structure or optional content group membership with regions of the page.
