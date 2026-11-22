# EntryLookup Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | This property represents the lookup table for the palette. |

## Notes

This property represents the lookup table for the palette.

The lookup may be represented as a [StreamElement](../../../07-syntax/1028-streamelement/index.md) or (in PDF 1.2) a byte string.

The table shall contain a number of colors one higher than the [EntryHiVal](02-entryhival.md).

Each color shall contain a number of byes equal to the number of components in the [EntryBaseColorSpace](01-entrybasecolorspace.md).

Each byte represents an intensity of color from 0 to 255 - 0% to 100% respectively.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 156.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=164)

The lookup table holds the color samples as a flat sequence of bytes. The table may be stored as a string or as a stream. Each group of bytes equal in length to the number of components in the base color space constitutes one table entry.

The byte values are unsigned integers in the range 0 to 255, regardless of the component range of the base space. The reader maps them to the base space's component range before interpreting them as colors.
