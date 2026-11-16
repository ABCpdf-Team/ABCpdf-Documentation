# VRIPolicy Property

## Notes

The chain policy to adopt when creating validation related information (VRI).

This property lets you control how the validation chain is built when creating Validation Related Information (VRI) for a signature. VRI is a dictionary inside the Document Security Store (DSS) that records the certificate chain and revocation data used to validate a signature, enabling long-term validation even if the signer’s certificates expire or revocation servers later go offline.

Ordinarily, ABCpdf attempts to build a complete certificate chain from the signing certificate up to a trusted root, validates each link, and stores all that information in the VRI. However, there are situations where a full chain cannot be built:

In these cases, you can use this property to decide how ABCpdf should proceed.

The PartialChainPolicy enumeration may take the following values:

## Example

None.

