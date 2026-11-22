# ValidationInfo Class

The validation properties of a PDF signature.

```
System.Object
    WebSupergoo.ABCpdf14.Objects.Signature.ValidationInfo
```

## Methods

| Method | Description |
| :---: | --- |

## Properties

| Property | Description |
| --- | --- |
| [SignerName](2-properties/01-signername.md) | The name of the signer of the signature as specified on the signer's certificate. |
| [SigningTime](2-properties/02-signingtime.md) | The most authoritative UTC signing time for the signature. |
| [SigningTimeIsTrusted](2-properties/03-signingtimeistrusted.md) | Whether the SigningTime is an embedded timestamp. |
| [RevocationCheckingTime](2-properties/04-revocationcheckingtime.md) | "The time the signature was validated. |
| [SignatureIsLTVEnabled](2-properties/05-signatureisltvenabled.md) | Whether the signature has long-term validation information. |
| [DocumentRevision](2-properties/06-documentrevision.md) | The document revision the signature applies to. |
| [SigningCertificate](2-properties/07-signingcertificate.md) | The X509 certificate used to sign the PKCS#7 signature. |
| [CertificateChain](2-properties/08-certificatechain.md) | The X509Chain as used to validate the signature. |
