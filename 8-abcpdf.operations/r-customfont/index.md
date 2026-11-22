# CustomFont Class

A class to allow creation of custom Type3 fonts using color icons and characters outside the standard 16 bit range. Most commonly this would be used for emojis.

Characters can be added individually or as a group if you have a PDF in a suitable format.

```
System.Object
   WebSupergoo.ABCpdf14.Operations.CustomFont
```

## Methods

| Method | Description |
| --- | --- |
| ⚠ [CustomFont](1-methods/01-customfont.md) | Create a CustomFont from a Doc containing one icon per page. |
| ⚠ [Embed](1-methods/02-embed.md) | Embed the custom font into a document. |

## Properties

| Property | Description |
| --- | --- |
| [Glyphs](2-properties/01-glyphs.md) | The set of Glyphs in the font. |
| [BBox](2-properties/02-bbox.md) | The smallest bounding box which will encompass all glyph bounding boxes. |
