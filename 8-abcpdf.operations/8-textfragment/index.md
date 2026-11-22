# TextFragment Class

A fragment of text as it appears in a document.

Each TextFragment spans a part of a PDF stream drawing operator. The part may be the entire of the text drawn by the operator or it may be a section of the text within that operator.

For example the PDF text drawing operator "(Once upon a time) Tj" draws that text. If you search for the word "upon" the TextFragment which is returned will reference the complete operator via the [StreamOffset](2-properties/streamoffset.md) and [StreamLength](2-properties/streamlength.md) properties but properties like the [Text](2-properties/text.md) and [Rect](2-properties/rect.md) will span only the word "upon" within that operator.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.TextFragment
```

## Methods

| Method | Description |
| :---: | --- |
| [Focus](1-methods/focus.md) | Prepare document for drawing at the fragment location. |

## Properties

| Property | Description |
| --- | --- |
| [Font](2-properties/font.md) | The font object used for drawing this text fragment. |
| [FontColor](2-properties/fontcolor.md) | The color used for drawing this text fragment. |
| [FontColorSpace](2-properties/fontcolorspace.md) | The ColorSpace used for drawing this text fragment. |
| [FontSize](2-properties/fontsize.md) | The effective font size used for drawing this text fragment. |
| [FontObliqueAngle](2-properties/fontobliqueangle.md) | The skew angle of the font as used for oblique styles to simulate italic. |
| [RenderingMode](2-properties/renderingmode.md) | The text rendering mode used for drawing this text fragment. |
| [PageID](2-properties/pageid.md) | The ID of the Page on which this text fragment is located. |
| [StreamID](2-properties/streamid.md) | The Stream ID of the content stream in which this text fragment is located. |
| [StreamOffset](2-properties/streamoffset.md) | The offset within the content stream to the start of the drawing operation that contains this fragment. |
| [StreamLength](2-properties/streamlength.md) | The length within the content stream of the drawing operation that contains this fragment. |
| [TextOffset](2-properties/textoffset.md) | The offset to the Text of this fragment. |
| [TextSpanIndex](2-properties/textspanindex.md) | The zero based index of the drawing operator text array item that contains this fragment. For non text array operators this value is zero. |
| [Rect](2-properties/rect.md) | The rectangle that contains the text of the fragment. |
| [Rotation](2-properties/rotation.md) | The angle of rotation of the fragment in degrees. |
| [Text](2-properties/text.md) | The text of the fragment. A fragment may span only a portion of the complete text drawing operator. |
| [RawText](2-properties/rawtext.md) | The text specified in the drawing operator or the text array item of the drawing operator. |
