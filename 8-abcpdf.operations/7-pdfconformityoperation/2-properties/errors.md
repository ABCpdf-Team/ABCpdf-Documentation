# Errors Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | Yes | The features within the document which could not be made conformant. |

## Notes

To make a document conformant, it may need to be changed. However, not all features that are non-compliant can be changed.

After the document has been changed, this property contains a list of the features within the document which could not be made conformant.

## Example

See the [Save](../1-methods/save.md) method.
