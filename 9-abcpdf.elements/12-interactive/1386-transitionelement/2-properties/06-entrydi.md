# EntryDi Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Di" entry of the transition dictionary object. |

## Notes

Represents the "Di" entry of the transition dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

2\) A string representing a PDF name object.

If provided, this item must always take the value "None".

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 162, page 379.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=387)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 164, page 460.](https://www.iso.org/standard/63534.html)

The direction in degrees specifies from which edge or corner the transition begins. 0 is left-to-right, 90 is bottom-to-top, 180 is right-to-left, 270 is top-to-bottom. The value 315 selects diagonal from the upper-left.
