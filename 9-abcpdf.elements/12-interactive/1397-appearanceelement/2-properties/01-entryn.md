# EntryN Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "N" entry of the appearance dictionary object. |

## Notes

Represents the "N" entry of the appearance dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) An [Element](../../../01-base/1086-element/index.md).

2\) A [FormXObjectElement](../../../08-graphics/1226-formxobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 168, page 389.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=397)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 170, page 472.](https://www.iso.org/standard/63534.html)

The normal appearance is shown when no interaction is occurring. It is the only required state. For annotations with multiple states N holds a sub-dictionary of named form XObjects.
