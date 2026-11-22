# EncodingElement Class

This class represents the encoding dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 114, page 263.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=271)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 112, page 319.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.EncodingElement`

An encoding dictionary customises the mapping from single-byte character codes to glyph names for a simple font. It modifies or replaces the font's built-in encoding rather than supplying a complete new mapping from scratch.

BaseEncoding names the standard encoding to use as the starting point. If this entry is absent, the viewer starts from the font's own built-in encoding. The three named encodings available as base values are MacRomanEncoding, MacExpertEncoding, and WinAnsiEncoding.

The Differences array lists the changes to apply on top of the base encoding. It contains a mix of integers and names: each integer sets a new starting character code, and the names that follow it assign glyph names to consecutive codes from that position onward.

An encoding dictionary is not required to cover all 256 possible codes. Only the positions that differ from the base need entries in the Differences array.

## Methods

| Method | Description |
| --- | --- |
| [EncodingElement](1-methods/01-encodingelement.md) | Create a new EncodingElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the encoding dictionary object. |
| [EntryBaseEncoding](2-properties/02-entrybaseencoding.md) | Represents the "BaseEncoding" entry of the encoding dictionary object. |
| [EntryDifferences](2-properties/03-entrydifferences.md) | Represents the "Differences" entry of the encoding dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
