# SVG to PDF Import

## Intro

When you use Doc.Read to import SVG content, ABCpdf uses its own native SVG import functionality. This is very fast and controllable and produces a very direct rendition of the SVG structures in terms of the PDF output. For SVG Tiny compliant input it is the best option.

The alternative is to use AddImageUrl/Html with one of the HTML engines. If you use an engine like ABCChrome the SVG rendering engine is extremely full featured. For complex SVG content including features outside the SVG Tiny specification it is the best option.

## SVG Tiny

ABCpdf supports a subset of SVG based around the SVG Tiny specification.

It does not support all the features of SVG Tiny because some features do not easily map through to equivalents in the PDF format. However it supports some features outside SVG Tiny to cover common usage in real world (non SVG Tiny) documents.

So what are the key differences between ABCpdf SVG and SVG Tiny?

## Content

PDF is essentially a static medium.

ABCpdf supports the import of static content.

However it does not import dynamic SVG content such as animations, videos and scripts.

## Text

ABCpdf supports external fonts referenced in SVG.

However it is also possible to embed fonts in an SVG file using a set of tags defining the path for each glyph. ABCpdf does not support this type of embedded font.

Some text styles such as light weights and font variants are not easily represented in PDF. For this reason ABCpdf may approximate them if they are used.

ABCpdf does not support the display-align property of the textarea element. However this is an element which is very rarely used (it is part of the new SVG 1.2 draft specification) and is not widely supported.

SVG Basic allows text in individual tspan blocks to be individually positioned attributes using x, y, dx and dy attributes. Because this is not part of SVG Tiny ABCpdf does not support it. However it is worth noting that this is perhaps the most commonly used text construct outside the specification.

## Colors

ABCpdf supports standard RGB web colors.

However it also supports device-rgb, device-rgb and device-cmyk which map through the corresponding color spaces in PDF.

## Links

Links are only supported for text elements within anchor elements.

Internal document links are not currently supported.

## Gradients

In SVG it is possible to specify opacity values for the stop-colors of gradients.

Unfortunately this is not possible in PDF.

As such ABCpdf substitutes transparent stop-colors with brighter solid stop-colors.

## CSS

Although it is not a part of SVG Tiny, ABCpdf supports a simplified CSS system.

This is useful because a large number of real world SVG documents use simple CSS selectors.

ABCpdf supports simple type selectors in internal style sheets. ABCpdf supports external style sheets as long as they are on the local file system.

However ABCpdf skips "import" and "media" CSS directives when parsing the style sheet itself.
