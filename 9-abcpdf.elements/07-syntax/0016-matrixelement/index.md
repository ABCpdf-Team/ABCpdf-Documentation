# MatrixElement Class

This class represents a tranformation matrix.

Transformation matrices can be used to produce affine transforms such as translations, scales, rotations and skews.

A transformation matrix consists of an array of six values.

Coordinates are expressed as a three element matrix:.

\[x, y, 1\].

The transformation matrix is expressed as a three by three matrix:.

\[a, b, 0\].

\[c, d, 0\].

\[e, f, 1\].

So to apply a matrix to a point or set of points one simply multiplies the point matrix by the transformation matrix.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 119.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=127)

A transformation matrix in PDF is a six-element array that encodes a 2D affine transformation. The six values represent the a, b, c, d, e, and f components of the standard 3x3 matrix with the third column fixed at \[0, 0, 1\].

Matrices are used throughout PDF to map between coordinate spaces: from user space to device space on a page, from pattern space to user space for tiling patterns, and from form space to the invoking context for form XObjects.

The identity matrix \[1 0 0 1 0 0\] leaves coordinates unchanged. Translation is encoded in the e and f components. Scaling uses the a and d components. Rotation requires all four of a, b, c, and d.

Concatenating transformations multiplies their matrices. The order of multiplication matters because matrix multiplication is not commutative. PDF specifies the concatenation order for each context where matrices are composed.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MatrixElement`

## Methods

| Method | Description |
| --- | --- |
| [MatrixElement](1-methods/01-matrixelement.md) | Create a new MatrixElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Elements](2-properties/01-elements.md) | The six elements in this list represent the following elements of the three by three transformation matrix:. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
