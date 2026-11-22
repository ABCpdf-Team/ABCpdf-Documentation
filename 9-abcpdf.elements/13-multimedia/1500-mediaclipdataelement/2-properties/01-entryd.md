# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "D" entry of the media clip data dictionary object. |

## Notes

Represents the "D" entry of the media clip data dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

2\) A [FormXObjectElement](../../../08-graphics/1226-formxobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 274, page 492.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=500)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 285, page 617.](https://www.iso.org/standard/63534.html)

The D entry holds the media data reference as a file specification dictionary or a URL string. It identifies where the media content is located, either embedded in the PDF or at an external address.
