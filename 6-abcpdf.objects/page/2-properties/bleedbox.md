# BleedBox Property

## Notes

The BleedBox defines the region to which the contents of the page shall be clipped when rendered in a production environment.

These boundaries are always defined directly on the Page object. If no property has been defined then this property will be null and the effective value is assumed to be that of the CropBox.

Note that, as with all objects in this namespace, this property is measured in points in the native PDF coordinate space. It is unaffected by the Doc.Units or Doc.TopDown properties.

## Example

Also see example code in: CustomFont CustomFont Function.

