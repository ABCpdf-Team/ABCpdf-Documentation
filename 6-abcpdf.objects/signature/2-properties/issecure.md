# IsSecure Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | Yes | True if the signature and document look well formed and well applied. |

## Example

True if the signature and document look well formed and well applied.

A signature with a PDF document occupies a specific portion of that document and should cover the rest of the document. However it is possible to create signatures which conform technically but are badly or suspiciously applied.

For example one could create a signature which did not cover the start of a document. While this is legal it is not sensible and this kind of structure should be regarded as insecure.

This property can be used to determine whether the signature has been well and sensibly applied.
