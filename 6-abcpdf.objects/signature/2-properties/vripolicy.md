# VRIPolicy Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `PartialChainPolicy` | Error | No | The chain policy to adopt when creating validation related information (VRI). |

## Notes

The chain policy to adopt when creating validation related information (VRI).

This property lets you control how the validation chain is built when creating Validation Related Information (VRI) for a signature. VRI is a dictionary inside the Document Security Store (DSS) that records the certificate chain and revocation data used to validate a signature, enabling long-term validation even if the signer’s certificates expire or revocation servers later go offline.

Ordinarily, ABCpdf attempts to build a complete certificate chain from the signing certificate up to a trusted root, validates each link, and stores all that information in the VRI. However, there are situations where a full chain cannot be built:

- A root certificate may not be available in the signing environment.
- A certificate may contain more than one potential chain (for example, when a timestamp is included).
- The validation process may encounter an invalid link somewhere in the chain.

In these cases, you can use this property to decide how ABCpdf should proceed.

The PartialChainPolicy enumeration may take the following values:

- Error - Generate an error.
- Skip - Skip any operations which involve the chain.
- Use - Use any elements of the chain which are available.
