# EmbeddedFiles Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Tuple<string, `[`EmbeddedFile`](../../embeddedfile/index.md)`>[]` | null | No | The set of embedded files if a set has been embedded in the PDF |

## Notes

The set of embedded files if a set has been embedded in the PDF.

Normally a file specification will refer to one file. However in some situations it may be necessary to allow it to refer to multiple. For example if a CMYK image is available as four color separations then it may be useful to be able to embed four different files to make up the whole data set. Each file will need a name so this property reflects both the name and the content of each file.

If the EmbeddedFiles property has a value, then the first file in the array should always be the same as the EmbeddedFile property. For this reason setting this property will also set the EmbeddedFile property to be equal to the first file in the array. If there are no items in the array then the EmbeddedFile property will be cleared.

This property requires reference to other objects in the ObjectSoup. If this object is not part of an ObjectSoup this property will always be null.
