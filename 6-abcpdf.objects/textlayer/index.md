# TextLayer Class

A multistyled text layer appearing on a page of the document.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.StreamObject`](../streamobject/index.md)  
`          `[`WebSupergoo.ABCpdf14.Objects.Layer`](../layer/index.md)  
`             WebSupergoo.ABCpdf14.Objects.TextLayer`

`Implements: IEquatable<TextLayer>`

## Methods

| Method | Description |
| --- | --- |
| [ClearTextOperation](1-methods/cleartextoperation.md) | Removes any cached TextOperation and TextFragments associated with this object. |
|  | [inherited methods...](../layer/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Characters](2-properties/characters.md) | The number of characters appearing on the page. |
| [EndPos](2-properties/endpos.md) | The point defining the end position of the text. |
| [Lines](2-properties/lines.md) | The number of lines appearing on the page. |
| [Previous](2-properties/previous.md) | The previous text object in the text chain. |
| [Truncated](2-properties/truncated.md) | Whether the text had to be truncated. |
| [FullText](2-properties/fulltext.md) | The full text provided in the initial call to AddTextStyled or AddText. |
| [TextStart](2-properties/textstart.md) | The offset to the first character drawn onto this layer. |
| [TextEnd](2-properties/textend.md) | The offset to the last character drawn onto this layer. |
| [TextNext](2-properties/textnext.md) | The offset to the character which will be drawn at the start of next item in the chain. |
| [TextFragments](2-properties/textfragments.md) | The TextFragments describing the precise layout of this text layer. |
| [TextOperation](2-properties/textoperation.md) | A TextOperation describing the precise layout of this text layer. |
|  | [inherited properties...](../layer/index.md) |
