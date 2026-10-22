# Uri Property

## Notes

The URI to the file. For the default platform, attempting to set this property to a value which is not a valid URI will result in an exception being thrown. To convert a standard Windows path to a URI use (new System.Uri(path).AbsouteUri.

For some values of the Platform property (e.g. Mac, DOS, Unix) raw file paths can be used. However these are obsolete and while you may see PDFs which contain them, you would be inadvised to generate new documents containing these structures.

## Example

Also see example code in: FileSpecification FileSpecification Function.

