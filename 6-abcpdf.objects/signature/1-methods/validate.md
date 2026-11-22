# Validate Function

Check and validate the status of this signature.

## Syntax

*C#*

`bool Validate()`  
`bool Validate(string[] certificatePaths)`  
`bool Validate(System.Collections.IEnumerable certificates)`  
`bool Validate(`[`Signature.CertificateCollection`](../../signature.certificatecollection/index.md)` certificates) // non-caching`

```
may throw Exception()
```

## Params

| Name | Description |
| :---: | --- |
| certificatePaths | An array of paths to X.509 certificate (.cer) files. |
| certificates | An IEnumerable collection of System.Security.Cryptography X509Certificates.X509Certificate2 objects and string paths; or an [Signature.CertificateCollection](../../signature.certificatecollection/index.md) object |
| return | True if the certificate is valid. |

## Notes

This function returns true if the signature is valid.

To be precise, this method updates the properties [Algorithm](../2-properties/algorithm.md), IsModified, IsTimeValid, IsTrusted and [CompliancePades](../2-properties/compliancepades.md). The return value is true only if the IsModified is false, and all of IsTimeValid, [IsSecure](../2-properties/issecure.md) and IsTrusted are true.

There are two types of signatures. Approval signatures approve a document at a particular point in time. Certification signatures approve the entire document as a one off event.

After a document is signed with an approval signature, the document is not necessarily frozen. Most obviously it may need to be updated if another user wishes to add their own signature. Each time the document is updated a new revision is created. The validity of a signature only refers to the revision at which it was signed - the [SigningRevision.](../2-properties/signingrevision.md) So while the signing revision does not affect validity you should be careful to take any subsequent revisions into account when reporting back to the user. Similarly there are some subtleties relating to the [IsTrusted](../2-properties/istrusted.md) property which are worth bearing in mind. Hybrid documents may have multiple different visual representations depending on the capabilities of the viewing application, so you may wish to be cautious if your documents contain hybrid sections. For how to detect hybrid sections see the [ObjectSoup.Eof.Load](../../2-objectsoup.eof/1-methods/01-load.md) method.

A document may contain one and only one certification signature. A certification signature applies to the entire document as a whole. You can set permissions to allow small changes to be made after the document is certified and in this case the SigningRevision may not be the last revision. However in general you should be extremely cautious if there are subsequent revisions as it is not easy to determine programmatically the importance of the changes that have been made. In this case you may wish to load the document at different revisions and display the rendered content to allow the user to see the changes visually.

Signatures' certificates can only be validated by referencing certificates issued by certification authorities. This method allows you to check and validate the status of a signature with reference to a set of such certificates. Additionally, ABCpdf can also use certificates found in the Windows Certificate Store for validation. See ValidationPolicy for details.

Except for the non-caching overload, the certificates you provide will be cached at a document level so this function is efficient even when checking multiple signatures within one document. If you do not provide any parameters, this function will use the previously cached certificates to validate the document. Therefore, unless ValidationPolicy is set to EntireChainTrust, or certificates have been provided using a previous call to this function, calling the parameterless overload of this function will cause an exception to be thrown to indicate that there are no certificates to validate against.

The overload that takes an [Signature.CertificateCollection](../../signature.certificatecollection/index.md) does not cache the input certificates and does not use any certificates cached with the document. It only uses the certificates provided in the parameter. It allows the use the same set of certificates to validate signatures in multiple documents without re-reading the certificate files.

ABCpdf does not do revocation checks on certificates provided and on certificates embedded in a PDF document unless the [CompliancePades](../2-properties/compliancepades.md) is set to something other than None. If you need to do this type of operation, you should use the [GetCertificates](getcertificates.md) function and check the certificates yourself.

If a certificate is unavailable or invalid, this method may throw an exception. This means validating against an unsigned signature field will cause an exception to be thrown.

When revocation checking, ABCpdf first checks OCSP responses. If those are not available it will use the CRL. This is the fastest and most efficient way to work.

> **How does Adobe Reader validate a PDF document without certificate files?**
>
> You may find that Adobe Reader does not need a list of certificate files to validate PDF documents. This is because Adobe Reader may use several built-in Public Key Infrastructure hierarchies to certify PDF documents:
>
> - [Certified Document Services (CDS)](http://www.adobe.com/security/partners_cds.html) is a trust hierarchy that chains back to the Adobe Root Certification Authority (Adobe Root CA).
> - [Adobe Approved Trust List (AATL)](http://www.adobe.com/security/approved-trust-list.html) is an extra list of CA certificates that Adobe Reader may download from Adobe periodically (for Adobe Reader/Acrobat 9 or later).
> - The Windows Certificate Store. This is only true if Windows digital signature integration is enabled in Acrobat, which has not been the default since Acrobat 9.
>
> In order to validate a PDF document the same way Adobe Reader does, you need to use the same certificates it uses. This can be easily achieved by exporting the *trusted identities* from Adobe Reader to .cer format certificate files. (Note: CDS and AATL certificates are usually *not* in your Windows Certificate Store by default.).
>
> These then need to be placed in the Windows Certificate Store. For them to be trusted they need to be in one of the Trusted folder - Trusted People or Trusted Root Certification Authorities. Needless to say, adding items to these folders - particularly the latter - is a big deal and you must be very careful to ensure you know what you are doing.
>
> The Windows Certificate Store can be accessed by using System.Security.Cryptography.X509Certificates.X509Store (examples below).

## Example

```csharp
// Validate using certificate files
using (var doc = new Doc()) {
  doc.Read("../Rez/SignedDocument.pdf");
  var theCerts = "../Rez/JohnSmith.cer".Split([ ';' ]);
  var theSig = (Signature)doc.Form["Signature"];
  if ((theSig.Validate(theCerts)) && (!theSig.IsModified))
    doc.AddText($"Signature valid at {DateTime.Now}");
  doc.Save("SignedAndValidated1.pdf");
}
```

```csharp
// Validate using the Windows Certificate Store
using (var doc = new Doc()) {
  doc.Read("../Rez/SignedDocument.pdf");
  using var theStore = new X509Store(StoreName.Root, StoreLocation.LocalMachine);
  theStore.Open(OpenFlags.ReadOnly);
  var theSig = (Signature)doc.Form["Signature"];
  if ((theSig.Validate(theStore.Certificates)) && (!theSig.IsModified))
    doc.AddText($"Signature valid at {DateTime.Now}");
  doc.Save("SignedAndValidated2.pdf");
}
```

Also see example code in: [Signature MaxSignatureLength Property](../2-properties/maxsignaturelength.md).
