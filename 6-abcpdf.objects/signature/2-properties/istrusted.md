# IsTrusted Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | Yes | True if the signature's certificate is trusted according to the validation policy. |

## Example

See the [Validate](../1-methods/validate.md) function and the [ValidationPolicy](validationpolicy.md) property for details of how this property is determined.

Note that it is possible for a signature to be untrusted but still PAdES compliant.

For example if a document was signed a decade ago it might no longer be possible to validate the trust chain so it would be untrusted.

However PAdES Long Term Validation (LTV) signatures embedded in the document might provide evidence that the signature had been compliant. If those the LTV signatures are trusted, by implication the signature itself is still trusted.

This type of situation is indicated by an IsTrusted value of false and a [CompliancePades](compliancepades.md) which is not None.
