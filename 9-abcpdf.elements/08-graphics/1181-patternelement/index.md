# PatternElement Class

This class represents the pattern dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 173.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=181)

The pattern element is the abstract base for PDF pattern types. Patterns allow a painting operation to fill or stroke with a repeating or algorithmically generated design rather than a flat color.

PDF defines two pattern types: Type 1 tiling patterns, which repeat a content stream in a regular grid, and Type 2 shading patterns, which paint a smooth colour gradient without tiling.

Patterns are stored as named resources in a resource dictionary under the Pattern entry. A content stream selects a pattern by setting the current color space to a Pattern space and then invoking a color-setting operator with the pattern name.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.PatternElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.Type1PatternElement`](../1182-type1patternelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type2PatternElement`](../1189-type2patternelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [PatternElement](1-methods/01-patternelement.md) | Create a new PatternElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the pattern dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
