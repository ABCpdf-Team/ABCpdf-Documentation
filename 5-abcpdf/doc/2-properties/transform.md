# Transform Property

## Notes

This property determines the current world space transform. It affects any drawing using the AddText, AddImage, AddLine, FrameRect and FillRect methods.

Transforms are general operations which encompass rotation, translation, magnification and skewing or a combination of these. Note that the order in which transforms are applied is significant: a rotation followed by a translation is not the same as a translation followed by a rotation.

A world space transform is not same an object transform. You are changing the coordinate system - not the objects you're inserting.

Note that transforms operate on the underlying PDF coordinate space rather than any abstraction specified by the Units and TopDown properties. If you are using transforms you will find it easiest to work in the native PDF coordinate space.

## Example

The following code creates a PDF document and adds some text and a rectangle rotated at 45 degrees anti-clockwise around the middle of the document.

[C#] using var doc = new Doc(); string text = "Gallia est omnis divisa in partes tres, quarum unam incolunt Belgae, aliam Aquitani, tertiam qui ipsorum lingua Celtae, nostra Galli appellantur. Hi omnes lingua, institutis, legibus inter se differunt. Gallos ab Aquitanis Garumna flumen, a Belgis Matrona et Sequana dividit."; text = text + "\r\n" + text + "\r\n" + text + "\r\n"; doc.Rect.Magnify(0.5, 0.5); doc.Rect.Position(151, 198); doc.FrameRect(); doc.Transform.Rotate(45, 302, 396); doc.FrameRect(); doc.FontSize = 24; doc.AddText(text); doc.Save("doctransform.pdf");

doctransform.pdf

Also see example code in: ABCpdf Landscape Example, Doc AddGrid Function, Doc AddXObject Function, XTransform Invert Function, XTransform Magnify Function, XTransform Reset Function, XTransform Rotate Function, XTransform Skew Function, XTransform Translate Function, XTransform AngleUnit�Property, FontObject RuneWidths Property, FontObject Widths Property, Page GetBitmap Function, Page MakeFormXObject Function, Page Rotation Property, XpsImportOperation Import Function.

