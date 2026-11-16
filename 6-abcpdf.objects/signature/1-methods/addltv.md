# AddLTV Function

Add Long Term Validation (LTV) to the Document Security Store (DSS).

## Syntax

[C#]

```csharp
void AddLTV(Oid oid)
```

## Params

| **Name** | **Description** |
| --- | --- |
| oid | The hash algorithm to use to create the digest of the signature to be timestamped where the TimestampServiceUrl is specified, for example new Oid("SHA256"). |

## Notes

Add Long Term Validation (LTV) to the Document Security Store (DSS).

The signature must have been signed and committed prior to calling this method.

The certificate used to sign the signature must be time-valid at the time of the call or an exception will be thrown.

The signing certificate and any other certificates in the signing certificate's chain of trust are extracted from the signature.

Additional reference certificates may be added to the ReferenceCertificates member of this Signature.

Each of these certificates is added to the document as a stream, along with any Online Certificate Status Protocol(OCSP) responses and/or Certificate Revocation Lists (CRLs) obtained.

The DSS dictionary is created containing references to these streams.

In addition a signature Validation Related Information (VRI) entry is added which enables fast lookup of information from the DSS.

If the TimestampServiceUrl is set an RFC 3161 timestamp will be stored as a stream with its reference set in to the VRI TS entry.

If it is null then the VRI TU value will be set to the current time from the computer's clock.

For more information see ISO 32000-2:2017 Section 12.8.4 (https://www.iso.org/standard/63534.html).

## Example

In this example, for simplicity, we use the plain text password overload. However to improve application security you may wish to use the SecureString overload.

[C#]

```csharp
using var doc = new Doc();
X509Certificate2 cert = Certificates.GetFromStore(); // User-defined function
if (cert == null)
  return; // no certificate found
doc.Page = doc.AddPage();
var sig = doc.Form.AddSignature(new XRect("340 160 540 220"), "Signature");
sig.Sign(cert, false);
sig.Commit();
sig = (Signature)doc.Form.Fields["Signature"];
sig.TimestampServiceUrl = new Uri("http://timestamp.comodoca.com");
sig.AddLTV(new Oid(CryptoConfig.MapNameToOID("SHA256")));
doc.Save("SignedLTV.pdf");
```

