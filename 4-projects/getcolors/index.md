# GetColors Example Project

## Project

This project shows how to find the colors used in a document.

One has to be a little careful about this concept - these things are not as straightforward as they might appear.

For example in a shading pattern there may be only two colors but of course a shade involves a variety of colors between these two points. Similarly an image may contain only two colors but the process of resizing it for display at a particular resolution may result in the creation of additional intermediate colors. Indeed the particular intermediate colors used may vary dependent on the resolution.

Likewise a page may reference a particular color, but for a variety of reasons, that color may not be displayed. For example it might be part of an object which is clipped, or it might be obscured by another item that is drawn a bit later, or it might be referenced but never actually used in an object.

However, with those caveats, it is sometimes useful to be able to count and retrieve the colors that are referenced. This project shows how this can be done. It reads the document pages and keeps track of the colors and color spaces that are referenced in the content stream. Finally it displays the answer.

In addition to being useful for counting colors, this project also provides a good example of how the [OpAtom](../../7-abcpdf.atoms/opatom/index.md) and [ContentStreamOperation](../../8-abcpdf.operations/g-contentstreamoperation/index.md) classes can be used to analyze a page content stream and graphic state. So if you are wanting to do low level analysis of page content, this is a good place to start.

The work is done by a ColorScanner class. This looks at the color operators on each page and resolves each color within its color space - gray, RGB, CMYK and so on.

So you can list or count the colors a document uses, or check whether a document is grayscale or CMYK before sending it to print. The project also includes an SvgExporter which uses the same approach to convert page content to SVG.
