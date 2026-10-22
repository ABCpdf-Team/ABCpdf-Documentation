# ValidationPolicy Property

## Notes

The validation policy for certificates.

The ValidationPolicyType enumeration may take the following values:

When you call Validate, you can choose to provide additional certificates. This property indicates how such certificates are used and how the certificates in the document signature are validated.

When you set this property to EntireChainTrust, ABCpdf checks whether the certificates in the document signature can be validated against a trusted root Certificate Authority (trust anchor) by performing a X.509 certification path validation as described in RFC 5280. ABCpdf will use the certificates found in "Trusted Root Certification Authorities" in the Windows Certificate Store of the local machine as trust anchors. Certificates you pass into the Validate method will be regarded as additional trust anchors.

When you set this property to CertificateSignatureOnly, ABCpdf checks whether at least one of the certificates in the document signature has been signed with the public key of one of the certificates passed to Validate. When this value is set, Validate does not check the Windows Certificate Store. If no certificates have been passed to Validate, an exception will be thrown.

EntireChainTrust is a sensible default because it is how Acrobat builds up a certificate trust chain and also how PKI generally works.

## Example

Also see example code in: Signature MaxSignatureLength Property.

