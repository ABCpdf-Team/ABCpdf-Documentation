# Algorithm Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `System.Security.Cryptography.Oid` | null | Yes | The type of hash algorithm used in the signature. |

## Example

Different types of hash digest algorithms may be used to generate a document hash for the signature.

For details of the types that may be used when signing a document, see the [Sign](../1-methods/sign.md) fuction.

This property reflects the type of algorithm which has been used when validating a document.

For further details see the [Validate](../1-methods/validate.md) function and the [ValidationPolicy](validationpolicy.md) property.
