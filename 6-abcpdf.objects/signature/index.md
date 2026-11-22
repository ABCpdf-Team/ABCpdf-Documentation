# Signature Class

Represents a digital signature field in a document.

As well as providing authorization, digital signatures can also be used to detect whether a file has been altered since signing took place.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.Field`](../field/index.md)  
`          WebSupergoo.ABCpdf14.Objects.Signature`

`Implements: IEquatable<Signature>`

## Methods

| Method | Description |
| --- | --- |
| [Equals](1-methods/equals.md) | Test whether the two Signatures are the same. |
| ⚠ [AddLTV](1-methods/addltv.md) | Add Long Term Validation (LTV) to the Document Security Store (DSS). |
| ⚠ [Certify](1-methods/certify.md) | Make this a certification signature. |
| ⚠ [Commit](1-methods/commit.md) | Commit a previously signed signature to the document. |
| [GetCertificates](1-methods/getcertificates.md) | Extract the encoded X.509 data of the certificate(s). |
| [LockFields](1-methods/lockfields.md) | Lock document fields to stop them being modified. |
| ⚠ [Sign](1-methods/sign.md) | Sign the digital signature using a private key and password. |
| ⚠ [Timestamp](1-methods/timestamp.md) | Sign a document timestamp signature field using a Timestamping Authority (TSA). |
| ⚠ [Validate](1-methods/validate.md) | Check and validate the status of this signature. |

## Properties

| Property | Description |
| --- | --- |
| [Algorithm](2-properties/algorithm.md) | The type of hash algorithm used in the signature. |
| [IsCertification](2-properties/iscertification.md) | Whether this a certification signature rather than an approval signature. |
| [IsModified](2-properties/ismodified.md) | True if the PDF has been tampered with after signing. |
| [IsSecure](2-properties/issecure.md) | True if the signature and document look well formed and well applied. |
| [IsTrusted](2-properties/istrusted.md) | True if the signature's certificate is trusted according to the validation policy. |
| [IsTimeValid](2-properties/istimevalid.md) | True if the signature's certificate was time-valid when the document was signed. |
| [CompliancePades](2-properties/compliancepades.md) | The signature compliance level. |
| [CustomSigner](2-properties/customsigner.md) | A delegate called to perform custom signing of the PDF. |
| [CustomSigner2](2-properties/customsigner2.md) | A delegate called to perform custom signing and timestamping of the PDF. |
| [CustomSignerArgumentType](2-properties/customsignerargumenttype.md) | The type of data to be passed to any custom signer. |
| [DSSPolicy](2-properties/dsspolicy.md) | The revocation policy to adopt when checking for the Document Security Store (DSS). |
| [IncludeDetailedBuildInfo](2-properties/includedetailedbuildinfo.md) | Whether detailed build environment information is included in the signature). |
| [MaxSignatureLength](2-properties/maxsignaturelength.md) | Indicates the maximum length of the signature CMS in bytes. |
| [Location](2-properties/location.md) | The location of the signing. |
| [Reason](2-properties/reason.md) | The reason for signing. |
| [Signer](2-properties/signer.md) | The name of the person signing. |
| [SigningRevision](2-properties/signingrevision.md) | The revision at which the signature was signed. |
| ⚠ [SigningUtcTime](2-properties/signingutctime.md) | The time of signing in UTC format. |
| [TimestampHashAlgorithm](2-properties/timestamphashalgorithm.md) | The hash algorithm used to create the digest for timestamp requests. |
| [TimestampServiceUrl](2-properties/timestampserviceurl.md) | The URL to a time-stamping service. |
| [ReferenceCertificates](2-properties/referencecertificates.md) | Reference certificates for PADES_B_LT and PADES_B_LTA. |
| [ValidationPolicy](2-properties/validationpolicy.md) | The validation policy for certificates. |
| [Validity](2-properties/validity.md) | The validity of the signature. |
| [VRIPolicy](2-properties/vripolicy.md) | The chain policy to adopt when creating validation related information (VRI). |
