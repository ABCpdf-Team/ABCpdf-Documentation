# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "C" entry of the structure element dictionary object. |

## Notes

Represents the "C" entry of the structure element dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

2\) An array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=566)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 722.](https://www.iso.org/standard/63534.html)

The C entry holds a class name or array of class names referencing entries in the ClassMap. The element inherits the attributes of all named classes, with directly specified A attributes taking precedence.
