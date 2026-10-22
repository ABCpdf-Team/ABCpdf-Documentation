# Layer Property

## Notes

The insertion layer for new content.

The default layer is one which indicates insertion at the top. So if you want to insert at the bottom and your page has ten layers you need to insert at position eleven.

Note that insertion may not behave predictably with documents read from file. It is good practice for each layer to operate independently but not all documents are set up this way.

Optional Content Groups. The type of layer that this property describes is an ABCpdf construct that you cannot detect using Acrobat. Acrobat layers are something completely different and are more precisely known as Optional Content Groups (OCG items).

The OCGLayers example project which comes with ABCpdf shows how to create content with visibility determined using a variety of flags. In addition to creation, it also shows manipulation such as hiding and showing OCGs, annotation of the items on a page dependent on their OCGs, and the redaction and deletion of invisible items.

## Example

Also see example code in: Doc AddImageCopy Function, Page GetBitmap Function.

