# EntryCS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "CS" entry of the projection dictionary object. |

## Notes

Represents the "CS" entry of the projection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "ANF" if no value has been provided.

This item may take one of the following valid values:.

- XNF
- far
- ANF

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 305, page 524.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=532)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 316, page 655.](https://www.iso.org/standard/63534.html)

The CS entry names the projection type: P for perspective projection (objects appear smaller with distance) or O for orthographic projection (parallel projection with no perspective foreshortening).
