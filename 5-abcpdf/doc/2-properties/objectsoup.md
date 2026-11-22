# ObjectSoup Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`ObjectSoup`](../../../6-abcpdf.objects/2-objectsoup/index.md) | n/a | Yes | The collection of objects that make up the PDF. |

## Notes

This property holds a reference to the ObjectSoup for the document. The soup is a non-traditional collection of indirect PDF objects which comprise the content of the PDF.

Do not alter the soup or the contents of the soup unless you are sure of the changes you are making. If inappropriate changes are made the result will be a corrupt PDF output.

## Example

Also see example code in: [Catalog Metadata Property](../../../6-abcpdf.objects/catalog/2-properties/metadata.md), [FileSpecification FileSpecification Function](../../../6-abcpdf.objects/filespecification/1-methods/filespecification.md).
