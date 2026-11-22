# PolygonAnnotation Function

Add polygon annotation to the current page of the doc.

## Syntax

*C#*

[`PolygonAnnotation`](../index.md)`(Doc doc, double[] vertices, XColor borderColor, XColor fillColor)`

## Params

| Name | Description |
| :---: | --- |
| doc | Doc |
| vertices | Polygon vertices |
| borderColor | Border color |
| fillColor | Fill color |

## Notes

Add polygon annotation to the current page of the doc.

When you create this type of annotation the [Annotation.Rect](../../annotation/2-properties/rect.md) is determined by the bounds of the vertices assuming a default border width. If you change the border width or the cloudiness you need to increase the size of the rectangle to accommodate the increase in size.

The size that is required is related to two factors - the border width and the cloudiness factor. The extent related to the border is equal to half the border width. The extent related to the cloudiness is the cloudiness level (between zero and two) multiplied by four. At creation the default border is one pixel so the Annotation.Rect extends out by 0.5 points from the bounds of the vertices.

Note that this is different from the way width and cloudiness are handled in the [SquareAnnotation](../../yy-squareannotation/index.md) and [CircleAnnotation](../../yy-circleannotation/index.md) types. For these the Annotation.Rect defines the bounds of the shape rather than the shape itself - so in this situation the clouds lie inside the bounds rather than extending out from the vertices.
