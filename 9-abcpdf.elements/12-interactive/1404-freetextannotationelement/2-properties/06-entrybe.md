# EntryBE Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`BorderEffectElement`](../../1395-bordereffectelement/index.md) | null | No | Represents the "BE" entry of the free text annotation object. |

## Notes

Represents the "BE" entry of the free text annotation object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a [BorderEffectElement](../../1395-bordereffectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 174, page 396.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=404)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 177, page 481.](https://www.iso.org/standard/63534.html)

The border effect dictionary applies a visual treatment such as a cloudy edge. When used the RD inset ensures the cloud arcs remain inside the annotation's total bounding rectangle.
