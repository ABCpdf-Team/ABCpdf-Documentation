# TextOperation Class

Operation to analyse and manipulate the text in a set of pages. Use it to search for text - to find and locate a phrase and get its position (coordinates) on the page.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.TextOperation
```

## Methods

| Method | Description |
| --- | --- |
| ⚠ [TextOperation](1-methods/1-textoperation.md) | TextOperation Constructor. |
| ⚠ [GetText](1-methods/gettext.md) | Get all the text in the page contents. |
| ⚠ [Select](1-methods/select.md) | Select a range of text in the document. |
| [Group](1-methods/group.md) | Group a range of text fragments into a set of lines. |

## Properties

| Property | Description |
| --- | --- |
| [ClippedTextTolerance](2-properties/clippedtexttolerance.md) | How much overlap to require clipped text to have before it is defined as visible. |
| [Direction](2-properties/direction.md) | The default direction for text. |
| [Hyphenation](2-properties/hyphenation.md) | Whether to de-hyphenate words that appear to be split across two lines. |
| [NativeColors](2-properties/nativecolors.md) | Whether to provide native colors such as CMYK, separations and spot colors, or whether to convert all colors to RGB. |
| [PageContents](2-properties/pagecontents.md) | The pages to be operated upon. |
| [ShowArtifactText](2-properties/showartifacttext.md) | Whether to show text content that is marked as an artifact. |
| [ShowClippedText](2-properties/showclippedtext.md) | Whether to show text which is invisible because it is affected by a clip path. |
| [ShowObscuredText](2-properties/showobscuredtext.md) | Whether to show overlapping repeated text content. |
| [Substitutions](2-properties/substitutions.md) | A set of character to string substitutions used for translating typographic characters like ligatures into more normal text. |
| [TabAffinity](2-properties/tabaffinity.md) | The minimum distance at which two text fragments will be assumed to be part of separate tab groups. |
| [TabChar](2-properties/tabchar.md) | The character used to separate out tab groups when GetText is called. |
| [WordAffinity](2-properties/wordaffinity.md) | The minimum distance at which two fragments will be assumed to be part of one undivided word. |
