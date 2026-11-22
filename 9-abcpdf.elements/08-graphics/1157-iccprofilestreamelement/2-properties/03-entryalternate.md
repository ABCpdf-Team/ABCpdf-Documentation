# EntryAlternate Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceElement`](../../0020-colorspaceelement/index.md) | null | No | Represents the "Alternate" entry of the icc profile stream dictionary object. |

## Notes

Represents the "Alternate" entry of the icc profile stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [ColorSpaceElement](../../0020-colorspaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 66, page 150.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=158)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 65, page 188.](https://www.iso.org/standard/63534.html)

The Alternate entry provides a fallback color space for use when ICC processing is not available. The alternate space must have the same number of components as N to allow color values to be passed through without reinterpretation.

A conforming reader that does not support ICC color management may use the alternate space to approximate the appearance of the content. Device color spaces are commonly used as alternates.
