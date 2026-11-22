# EntryInks Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Inks" entry of the version 2. |

## Notes

Represents the "Inks" entry of the version 2.0 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

2\) An array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 642.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=650)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 827.](https://www.iso.org/standard/63534.html)

The Inks entry describes the image colorants. It may be the name full_color or registration, or an array of ink dictionaries each naming a colorant and providing its color space definition.
