# StandardLayoutAttributesElement Class

This class represents the standard layout attributes. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 343, page 597.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=605)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 378, page 770.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 344, page 600.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=608)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 379, page 774.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 345, page 604.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=612)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 380, page 778.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 346, page 608.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=616)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 381, page 782.](https://www.iso.org/standard/63534.html)

The standard layout attributes dictionary carries visual formatting properties defined by the PDF specification. These are owned by the Layout attribute owner and describe how content is positioned and rendered.

The Placement attribute controls whether an element flows as a block, inline, or float. The WritingMode attribute specifies text flow direction: LrTb for Western scripts, RlTb for Arabic and Hebrew, and TbRl for vertical East Asian scripts.

Spacing attributes SpaceBefore, SpaceAfter, StartIndent, EndIndent, and TextIndent control margins and indentation of block-level elements, corresponding to the CSS box model.

Border attributes BorderColor, BorderStyle, and BorderThickness control the visual border. Table-specific equivalents TBorderStyle and TPadding apply to table cells independently.

Text attributes Color, TextAlign, BaselineShift, LineHeight, TextDecorationColor, TextDecorationThickness, TextDecorationType, and TextPosition control text appearance.

Ruby layout attributes RubyAlign and RubyPosition control positioning of ruby annotations relative to base text in East Asian typography.

The GlyphOrientationVertical attribute controls glyph rotation in vertical writing mode.

Column layout attributes ColumnCount, ColumnGap, and ColumnWidths describe multi-column layout for reflow and accessibility tools.

The BBox attribute gives the bounding box of the element in default user space, useful for absolutely positioned elements.

The Width and Height attributes declare fixed dimensions. BlockAlign and InlineAlign control content alignment within a block.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AttributesElement`](../1575-attributeselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.StandardStructureAttributesElement`](../1601-standardstructureattributeselement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.StandardLayoutAttributesElement`

## Methods

| Method | Description |
| --- | --- |
| [StandardLayoutAttributesElement](1-methods/01-standardlayoutattributeselement.md) | Create a new StandardLayoutAttributesElement. |
|  | [inherited methods...](../1601-standardstructureattributeselement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryPlacement](2-properties/01-entryplacement.md) | Represents the "Placement" entry of the standard layout attributes object. |
| [EntryWritingMode](2-properties/02-entrywritingmode.md) | Represents the "WritingMode" entry of the standard layout attributes object. |
| [EntryBackgroundColor](2-properties/03-entrybackgroundcolor.md) | Represents the "BackgroundColor" entry of the standard layout attributes object. |
| [EntryBorderColor](2-properties/04-entrybordercolor.md) | Represents the "BorderColor" entry of the standard layout attributes object. |
| [EntryBorderStyle](2-properties/05-entryborderstyle.md) | Represents the "BorderStyle" entry of the standard layout attributes object. |
| [EntryBorderThickness](2-properties/06-entryborderthickness.md) | Represents the "BorderThickness" entry of the standard layout attributes object. |
| [EntryPadding](2-properties/07-entrypadding.md) | Represents the "Padding" entry of the standard layout attributes object. |
| [EntryColor](2-properties/08-entrycolor.md) | Represents the "Color" entry of the standard layout attributes object. |
| [EntrySpaceBefore](2-properties/09-entryspacebefore.md) | Represents the "SpaceBefore" entry of the standard layout attributes object. |
| [EntrySpaceAfter](2-properties/10-entryspaceafter.md) | Represents the "SpaceAfter" entry of the standard layout attributes object. |
| [EntryStartIndent](2-properties/11-entrystartindent.md) | Represents the "StartIndent" entry of the standard layout attributes object. |
| [EntryEndIndent](2-properties/12-entryendindent.md) | Represents the "EndIndent" entry of the standard layout attributes object. |
| [EntryTextIndent](2-properties/13-entrytextindent.md) | Represents the "TextIndent" entry of the standard layout attributes object. |
| [EntryTextAlign](2-properties/14-entrytextalign.md) | Represents the "TextAlign" entry of the standard layout attributes object. |
| [EntryBBox](2-properties/15-entrybbox.md) | Represents the "BBox" entry of the standard layout attributes object. |
| [EntryWidth](2-properties/16-entrywidth.md) | Represents the "Width" entry of the standard layout attributes object. |
| [EntryHeight](2-properties/17-entryheight.md) | Represents the "Height" entry of the standard layout attributes object. |
| [EntryBlockAlign](2-properties/18-entryblockalign.md) | Represents the "BlockAlign" entry of the standard layout attributes object. |
| [EntryInlineAlign](2-properties/19-entryinlinealign.md) | Represents the "InlineAlign" entry of the standard layout attributes object. |
| [EntryTBorderStyle](2-properties/20-entrytborderstyle.md) | Represents the "TBorderStyle" entry of the standard layout attributes object. |
| [EntryTPadding](2-properties/21-entrytpadding.md) | Represents the "TPadding" entry of the standard layout attributes object. |
| [EntryBaselineShift](2-properties/22-entrybaselineshift.md) | Represents the "BaselineShift" entry of the standard layout attributes object. |
| [EntryLineHeight](2-properties/23-entrylineheight.md) | Represents the "LineHeight" entry of the standard layout attributes object. |
| [EntryTextDecorationColor](2-properties/24-entrytextdecorationcolor.md) | Represents the "TextDecorationColor" entry of the standard layout attributes object. |
| [EntryTextDecorationThickness](2-properties/25-entrytextdecorationthickness.md) | Represents the "TextDecorationThickness" entry of the standard layout attributes object. |
| [EntryTextDecorationType](2-properties/26-entrytextdecorationtype.md) | Represents the "TextDecorationType" entry of the standard layout attributes object. |
| [EntryRubyAlign](2-properties/27-entryrubyalign.md) | Represents the "RubyAlign" entry of the standard layout attributes object. |
| [EntryRubyPosition](2-properties/28-entryrubyposition.md) | Represents the "RubyPosition" entry of the standard layout attributes object. |
| [EntryGlyphOrientationVertical](2-properties/29-entryglyphorientationvertical.md) | Represents the "GlyphOrientationVertical" entry of the standard layout attributes object. |
| [EntryTextPosition](2-properties/30-entrytextposition.md) | Represents the "TextPosition" entry of the standard layout attributes object. |
| [EntryColumnCount](2-properties/31-entrycolumncount.md) | Represents the "ColumnCount" entry of the standard layout attributes object. |
| [EntryColumnGap](2-properties/32-entrycolumngap.md) | Represents the "ColumnGap" entry of the standard layout attributes object. |
| [EntryColumnWidths](2-properties/33-entrycolumnwidths.md) | Represents the "ColumnWidths" entry of the standard layout attributes object. |
|  | [inherited properties...](../1601-standardstructureattributeselement/index.md) |
