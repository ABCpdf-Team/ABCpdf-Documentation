# Preflight Property

## Notes

Whether to preflight objects during Save.

In addition this also applies to the Append and AddImageDoc operations as these involve similar concepts.

Dynamically generated PDFs can contain partially constructed objects. At the point that two documents are combined the partially constructed objects need to be finished in order to ensure that the new combination is going to be valid.

For example, you add a subsetted font and some text to a document. As you add more text, a list of characters is built up. At the point that the document is saved, the font object and the character list need to be combined for a sensible font subset to be formed. This font is an example of a partially constructed object.

In general if your source documents are read from existing PDF templates then they will not contain any partially constructed objects. It is only if the documents are corrupt or if you are adding text, that partially constructed objects may be present.

If this property is set to true, then ABCpdf will preflight all objects in the destination document. This process requires significant amounts of time if the destination document contains many indirect objects.

If the property is set to false then ABCpdf will only preflight objects it knows to need preflighting.

## Example

None.

