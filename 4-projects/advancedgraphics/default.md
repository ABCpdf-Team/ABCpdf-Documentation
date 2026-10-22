# AdvancedGraphics Example Project

## Project

This project shows how to use ABCpdf to write PDF drawing operators and content streams.

Writing drawing operators to a content stream represents a lower level approach than the standard ABCpdf APIs. It provides a sophisticated level of control but it is rather more complicated to code.

It is probably more appropriate for more drawing based routines where you need paths, clips, fills, shades and blends. It is probably less appropriate for text which can be very complex when presented at a low level.

The code consists of a series of short examples, each on its own page. These cover stroking and filling, the even-odd fill rule, Bezier curves, clipping paths, line caps, line joins, dash patterns, rotation, blend modes, text, Form XObjects and clipped images.

The PDFContent class provides a simple method for each of the PDF path, painting and graphics state operators. The PDFBoundedContent class keeps track of the area you have drawn, so that the result can be saved as a Form XObject and reused as many times as you like.

For more details see the project or the Advanced Graphics Example section in this documentation.

