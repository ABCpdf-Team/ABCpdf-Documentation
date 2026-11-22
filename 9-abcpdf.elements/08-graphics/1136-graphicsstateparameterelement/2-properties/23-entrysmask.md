# EntrySMask Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "SMask" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "SMask" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

2\) A [SoftMaskElement](../../../11-transparency/1355-softmaskelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 130.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=138)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 164.](https://www.iso.org/standard/63534.html)

The soft mask defines an alpha channel for the current transparency group or for individual objects. It may be the name None (no mask), the name Alpha, or a soft-mask dictionary that describes how to compute per-pixel alpha values from a transparency group.

A soft-mask dictionary references a Form XObject whose rendered result produces the mask. The Luminosity type uses the luminance of the form as alpha; the Alpha type uses the form's accumulated alpha directly.

Soft masks enable complex compositing effects such as feathered edges and smooth transparency transitions that cannot be achieved with binary clip masks.
