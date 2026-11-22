# GetText Function

Extract content from the current page in a specified format.

## Syntax

*C#*

`string GetText(TextType type, bool includeAnnotations)`  
`string GetText(TextType type, bool includeAnnotations, bool includePaths, bool includeText, bool includeImages, bool includeColors)`  
`string GetText(TextType type, bool includeAnnotations, bool includePaths, bool includeText, bool includeImages, bool includeColors, bool useMinimumLineWidth, bool autoRotate)`  
`string GetText(TextType type, bool includeAnnotations, bool includePaths, bool includeText, bool includeImages, bool includeColors, `[`Layer`](../../layer/index.md)`[] layers)`

## Params

| Name | Description |
| :---: | --- |
| type | The format in which to return the content. |
| includeAnnotations | Whether to include field and annotation text. |
| includePaths | Whether to include graphics paths and path operators in the output (ignored for Text and RawText). Default true. |
| includeText | Whether to include text and text operators in the output (ignored for Text and RawText). Default true. |
| includeImages | Whether to include image placeholders in the output (ignored for Text and RawText). Default true. |
| includeColors | Whether to include colors and color operators in the output (ignored for Text and RawText). Default true. |
| useMinimumLineWidth | Whether to use the [Rendering.MinimumLineWidth](../../../5-abcpdf/xrendering/2-properties/minimumlinewidth.md) property (ignored for Text and RawText). Default false. |
| autoRotate | Whether to rotate PDF pages which are tagged as to be rotated for viewing (ignored for Text and RawText). Default false. |
| layers | The layers from which content should be extracted. |
| return | The content of the page as a string of text or SVG, in the format specified by type. |

## Notes

The overload taking an array of layers extracts content from only those layers of the page.

The TextType enumeration may take the following values:

- Text
- RawText
- Svg
- SvgPlus
- SvgPlus2

Text is in layout order, which may not be the same as reading order. ABCpdf will make sensible assumptions on how items of text should be combined, but some situations are ambiguous. The TextType.Text format provides sophisticated text analysis and interpolation for a more human readable output. The TextType.RawText format is faster and simpler and provides a more literal interpretation of the text in the document.

SVG is an XML based format for representing vector graphics. Because SVG is standard XML, it's easy to parse and gives you the precise position of each item of text on the page. The way that ABCpdf constructs the SVG should make it easy to extract any information you require. ABCpdf currently supports SVG text, paths and image placeholders.

For example, a simple "Hello World" PDF might produce the following content:

```
<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg width="612" height="792" x="0" y="0">
<text x="0" y="76.8" font-size="96" font-family="Times-Roman" >Hello World</text>
</svg>
```

SVG+ and SVG+2 are annotated forms of SVG which include details of the PDF operators and how they relate to the items of content in the SVG. They can be very useful if you are trying to deconstruct a page and determine how objects in the PDF relate to objects in the SVG. In SVG+, SVG elements appear before the pdf elements for their generating operators, and the pdf elements for the Do operator on Form XObjects are not generated. In SVG+2, SVG elements appear after the pdf elements of their generating operators, and the pdf elements for the Do operator on Form XObjects are generated.

For example, you could use SVG+ to identify the section of a PDF stream that relates to a particular word on a page. You could then replace the text show operator for that word with another one. Effectively, you'd be performing a low-level Search/Replace on the PDF document. However, you should note that this would not mean that your layout would automatically adjust if - for example - you were to replace a short word with a long one.

There is no official standard for SVG+, but if you are familiar with the PDF specification, it should be easy enough to understand.

For example, a simple "Hello World" PDF might produce the following content:

```
<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg width="612" height="792" x="0" y="0">
<pdf pdf_Op="q" pdf_StreamID="5" pdf_StreamOffset="0" pdf_StreamLength="1" />
<pdf pdf_Op="BT" pdf_StreamID="5" pdf_StreamOffset="3" pdf_StreamLength="2" />
<pdf pdf_Op="0 Tr" pdf_StreamID="5" pdf_StreamOffset="7" pdf_StreamLength="4" />
<pdf pdf_Op="/Fabc6 96 Tf" pdf_StreamID="5" pdf_StreamOffset="13" pdf_StreamLength="12" />
<pdf pdf_Op="0 0 0 rg" pdf_StreamID="5" pdf_StreamOffset="27" pdf_StreamLength="8" />
<pdf pdf_Op="1 0 0 1 0 715.2 Tm" pdf_StreamID="5" pdf_StreamOffset="37" pdf_StreamLength="18" />
<pdf pdf_Op="0 Ts" pdf_StreamID="5" pdf_StreamOffset="57" pdf_StreamLength="4" />
<text x="0" y="76.8" font-size="96" font-family="Times-Roman" pdf_CTM="1 0 0 1 0 0" pdf_TM="1 0 0 1 0 715.2" pdf_Trm="96 0 0 96 0 715.2" pdf_Tf="Fabc6" pdf_Tz="100" pdf_Ts="0" pdf_w1000="5027" pdf_Op="(Hello World) Tj" pdf_StreamID="5" pdf_StreamOffset="63" pdf_StreamLength="16" >Hello World</text>
<pdf />
<pdf pdf_Op="ET" pdf_StreamID="5" pdf_StreamOffset="81" pdf_StreamLength="2" />
<pdf pdf_Op="Q" pdf_StreamID="5" pdf_StreamOffset="85" pdf_StreamLength="1" />
</svg>
```

The operators within the PDF stream are detailed in the SVG. For example, the first 'q' operator is located in Object ID 5 at offset 0 and has a length of 1 byte. The 'Tj' operator which shows "Hello World" is at offset 63 and has length 16. The Current Transformation Matrix (CTM), the Text Matrix (TM), and other important PDF state values are shown.

Unfortunately, the XML specification was designed in such a way that it does not allow all ASCII values to be represented. There are certain ranges of characters that are completely banned, and this is true even if you attempt to use entity references to include them. Given that the PDF specification allows a broader range of values, you need to consider how you represent characters outside the XML range. For the pdf_Op attribute, all such characters are moved into the U+E000 Unicode private use area. So to convert this string to a PDF format string, you just need to coerce any such character to a byte. This is only relevant to the pdf_Op attribute.
