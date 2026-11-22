# IsCertification Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | Yes | Whether this a certification signature rather than an approval signature. |

## Notes

Whether this a certification signature rather than an approval signature.

A document may contain one at most one certification signature, applying to the document as a whole.

It allows the detection of changes to the document, the origin or the author of the document and specifies ways in which the document may be modified or acted upon.

The ways in which a document may be modified are typically very small as the core function of a certification signature is to maintain document integrity.
