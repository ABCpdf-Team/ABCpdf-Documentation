# RectangleElement Class

This class represents a rectangle.

A rectangle consists of an array of four values - two pairs of pairs. The first pair represent the x and y coordinates of the lower left of the rectangle,.

the second pair represent the x and y coordinates of the upper right of the rectangle. So \[lx, ly, ux, uy\].

Although the pairs conventially represent the lower left and upper right corners, it is in fact legal to represent any diagaonally opposed corners and.

PDF applications will automatically normalize these when they are found.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 88.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=96)

A rectangle in PDF is a four-element array specifying two corner points: \[llx, lly, urx, ury\]. The values represent the x and y coordinates of the lower-left and upper-right corners in the applicable coordinate system.

Rectangles are used to define bounding boxes, crop boxes, media boxes, annotation rectangles, and clip regions. The coordinate values are in user space unless a specific matrix transforms them.

A conforming reader normalises a rectangle so that llx is less than urx and lly is less than ury. If a writer provides the corners in a different order, the reader swaps the values as needed.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RectangleElement`

## Methods

| Method | Description |
| --- | --- |
| [RectangleElement](1-methods/01-rectangleelement.md) | Create a new RectangleElement. |
| [GetRect](1-methods/02-getrect.md) | Get the contents of this RectangleElement as an XRect. |
| [SetRect](1-methods/03-setrect.md) | Set the contents of this RectangleElement using an XRect. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Elements](2-properties/01-elements.md) | A rectangle consists of an array of four values - two pairs of pairs. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
