# MediaBox Property

## Notes

The MediaBox defines the boundaries of the physical medium on which the page may be displayed or printed. This may include bleed areas or printing marks and also parts of the medium on which printing cannot take place because of physicsal limitations of the output technology. Any PDF drawing outside the MediaBox can be safely ignored.

These boundaries may be defined directly on the Page object or they may be inherited from a parent Pages object.

A MediaBox is mandatory for all pages so this property should never be null.

Assigning a new value to this property will change the property for the current Page rather than any Pages object from which the value may have been inherited. In this way the property exhibits a copy-on-write behavior.

Attempting to assign a null value to this property will result in a NullReferenceException being thrown.

Note that, as with all objects in this namespace, this property is measured in points in the native PDF coordinate space. It is unaffected by the Doc.Units or Doc.TopDown properties.

## Example

Also see example code in: CustomFont CustomFont Function.

