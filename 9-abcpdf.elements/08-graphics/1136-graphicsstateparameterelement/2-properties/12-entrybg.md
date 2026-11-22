# EntryBG Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FunctionElement`](../../../07-syntax/1101-functionelement/index.md) | null | No | Represents the "BG" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "BG" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [FunctionElement](../../../07-syntax/1101-functionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=137)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.](https://www.iso.org/standard/63534.html)

The black-generation function maps a single CMYK gray-component value to a black ink amount. It is used during conversion from a device-independent color space to CMYK to determine how much black ink to introduce.

Black generation affects the ink balance in CMYK output. Greater black ink with corresponding reductions in CMY can improve shadow density and reduce ink consumption. This entry may also hold the name Default to restore the device's default function.
