# Reason Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | The reason for signing. |

## Notes

The reason for signing.

If you wish to set a value for this property, you should do so before calling the [Sign](../1-methods/sign.md) function.

This property can take null as a value. This indicates that no reason was given.

Note that this property can only be relied on if the certificate is valid. You can check whether the certificate is valid using the [Validate](../1-methods/validate.md) function.

## Example

See the [Sign](../1-methods/sign.md) function.

Also see example code in: [Signature Sign Method](../1-methods/sign.md), [Signature CompliancePades Property](compliancepades.md), [Signature CustomSigner Property](customsigner.md), [Signature CustomSigner2 Property](customsigner2.md), [Signature MaxSignatureLength Property](maxsignaturelength.md).
