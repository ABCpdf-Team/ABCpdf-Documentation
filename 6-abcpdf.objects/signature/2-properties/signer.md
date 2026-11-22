# Signer Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | See description. | No | The name of the person signing. |

## Notes

The name of the person signing.

When you call the Sign function the name of the signer is automatically updated to match the name associated with the private key.

Note that this property can only be relied on if the certificate is valid. You can check whether the certificate is valid using the [Validate](../1-methods/validate.md) function.

You will not need to change the value of this property unless you are writing low level signature manipulation code.
