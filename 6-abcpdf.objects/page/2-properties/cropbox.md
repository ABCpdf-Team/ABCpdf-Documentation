# CropBox Property

## Notes

The CropBox for the page. The CropBox defines the visible part of the physical medium on which the page may be displayed or printed. This is what you see as the boundary of the page when you view a document using Acrobat Reader.

These boundaries may be defined directly on the Page object or they may be inherited from a parent Pages object.

The CropBox is optional and if this property is null it is implicitly assumed to be the same as the MediaBox.

Assigning a new value to this property will change the property for the current Page rather than any Pages object from which the value may have been inherited. In this way the property exhibits a copy-on-write behavior.

Attempting to assign a null value to this property will result in a NullReferenceException being thrown. This is because the CropBox may be inherited from a parent page and thus removing the CropBox from the current page may simply result in it being inherited from another. This is unusual and counterintuitive behavior and can result in subtle bugs related to specific documents. As such, if you want to clear this property you should assign it the value of the MediaBox.

Note that, as with all objects in this namespace, this property is measured in points in the native PDF coordinate space. It is unaffected by the Doc.Units or Doc.TopDown properties.

## Example

Also see example code in: CustomFont CustomFont Function.

