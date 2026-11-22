# ContentStreamScanner Class

A class to scan through a content stream keeping track of state while it does so.

Subclass to collect or extract content as it is being scanned.

```
System.Object
   WebSupergoo.ABCpdf14.Operations.ContentStreamScanner
```

## Methods

| Method | Description |
| --- | --- |
| [ContentStreamScanner](1-methods/01-contentstreamscanner.md) | Create a new ContentStreamScanner. |
| [Call](1-methods/02-call.md) | Call the scanner using an owner and a content stream array. |
| [Process](1-methods/02-process.md) | Process a content stream keeping track of state. |
| [ProcessItem](1-methods/03-processitem.md) | Process an item in a content stream and update the graphics or text state to reflect the action of the item. |
| [ShowText](1-methods/04-showtext.md) | Show an item of text. |
| [Abort](1-methods/05-abort.md) | Abort the current processing. |

## Properties

| Property | Description |
| --- | --- |
| [Resources](2-properties/01-resources.md) | A class for accessing resources in the document. |
| [Operators](2-properties/02-operators.md) | The set of operators which should be processed. |
| [DoFormXObjects](2-properties/03-doformxobjects.md) | Whether to call into Form XObjects or not. |
| [DoGraphicsStateSoftMasks](2-properties/03-dographicsstatesoftmasks.md) | Whether to call into graphics state soft mask Form XObjects or not. |
| [DoShowText](2-properties/03-doshowtext.md) | Whether to call into the ShowText function. |
| [DoUnicode](2-properties/04-dounicode.md) | Whether to convert text to Unicode or not. |
| [DoWidths](2-properties/05-dowidths.md) | Whether to calculate text widths or not. |
| [Owners](2-properties/03-owners.md) | A stack of content stream owners. |
| [Stack](2-properties/07-stack.md) | The current graphics stack. |
| [State](2-properties/07-state.md) | The current graphics state. |
| [Text](2-properties/08-text.md) | The current text state. |
| [Warnings](2-properties/06-warnings.md) | Content streams contain operators and parameters. |
