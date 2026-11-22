# EntryW2 Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "W2" entry of the cidfont dictionary object. |

## Notes

Represents the "W2" entry of the cidfont dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 270.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=278)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.](https://www.iso.org/standard/63534.html)

This array overrides DW2 for specific CIDs or ranges, using the same format as W but with three values per CID: vertical advance, and the x and y components of the position vector.

Only present when the document uses vertical writing for some or all of the font's glyphs.
