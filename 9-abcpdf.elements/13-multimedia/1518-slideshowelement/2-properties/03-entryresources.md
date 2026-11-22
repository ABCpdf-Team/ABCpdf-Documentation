# EntryResources Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`NameTreeNodeElement`](../../../07-syntax/1097-nametreenodeelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Resources" entry of the slideshow dictionary object. |

## Notes

Represents the "Resources" entry of the slideshow dictionary object.

It is a required entry defined as part of the PDF 1.4 specification.

It contains a [NameTreeNodeElement](../../../07-syntax/1097-nametreenodeelement_t_/index.md) containing [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 297, page 510.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=518)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 308, page 637.](https://www.iso.org/standard/63534.html)

The Resources entry references a resource dictionary containing the images and other media objects used in the slideshow. Each resource in the dictionary is a named XObject that can be referenced during the presentation.
