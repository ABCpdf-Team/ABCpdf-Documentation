# EntryOB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "OB" entry of the projection dictionary object. |

## Notes

Represents the "OB" entry of the projection dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Absolute" if no value has been provided.

This item may take one of the following valid values:.

- W
- H
- Min
- Max
- Absolute

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 305, page 524.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=532)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 316, page 656.](https://www.iso.org/standard/63534.html)

The OB entry names the orthographic bounding behaviour, controlling how the model is fitted within the orthographic projection when the view is reset.
