# Sign Method

Sign the digital signature using a private key and password.

## Syntax

```csharp
void Sign(string path, string password)
void Sign(byte[] data, string password)
void Sign(Stream stream, string password)
void Sign(Stream stream, string password, Oid oid)
void Sign(X509Certificate2 cert, bool silent)
void Sign(X509Certificate2 cert, bool silent, Oid oid, X509IncludeOption? option)
void Sign(X509Certificate2 cert, SecureString password, Oid oid)
void Sign(Oid oid, DataType dataType, int sizeEstimate)
void Sign(Oid oid, DataType dataType, int sizeEstimate, X509Certificate2 templateCert)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| path | The path to the PFX/PKCS #12 (.pfx or .p12) file used for signing. |
| data | The data for the PFX/PKCS #12 (.pfx or .p12) file used for signing. |
| stream | The stream for the PFX/PKCS #12 (.pfx or .p12) file used for signing. |
| password | The password used to authorize use of the private key. Depending on the overload used this may be a String or a SecureString.<br>The SecureString overload must be used if the private key is held on a Hardware Security Module (HSM).<br>Setting the SecureString value to null will force a prompt for the HSM password from a user. |
| oid | The OID of the hash algorithm that should be used to create the digest. The default is SHA256 which is what will be used if null is passed. |
| cert | The System.Security.Cryptography X509Certificates.X509Certificate2 object for the PFX/PKCS #12 (.pfx or .p12) certificate used for signing. |
| silent | Whether to suppress prompting the user to use the private key. For non-interactive or unattended operation this parameter should be set to true.<br>Some certificates contain protected private keys. For example you will get such a certificate if during import you check the option,<br>"Enable strong private key protected. You will be prompted every time the private key is used by an application if you enable this option."<br>For such certificates you cannot make the sign operation silent. If you set the silent parameter to true then an exception will be raised. If you set it to false then a dialog box will be displayed asking you to ensure that your use of the private key is authorized. |
| option | The parts of the signing certificate chain which should be included in the signature. The default is WholeChain which is what will be used if null is passed.<br>NB this value is ignored unless: the certificate does not have an exportable private key; or has a private key on a Hardware Security Module. |
| dataType | The data type and options which will be provided to the CustomSigner or CustomSigner2.<br>This is a flags based enum and the default is zero which is equivalent to DataType.Pkcs9Digest. This indicates that, when signing the callback will be provided with a PKCS9 ASN.1 encoded byte array containing the digest of the PDF content and attributes to be authenticated. When time stamping an RFC 3161 time stamp request will be provided and an RFC 3161 time stamp response is expected. To override these behaviors specify alternative flags.<br>For details of the possible values see the [CustomSignerArgumentType](../2-properties/customsignerargumenttype.md) property. |
| sizeEstimate | The number of bytes to allocate for the SignedCMS returned by the CustomSigner delegate.<br>Sizes can vary substantially as the SignedCMS may contain may different types of data. However a typical value would be in the range of 3000 to 6000. |
| templateCert | A template certificate into which the digest can be inserted. |

## Notes

Use this method to sign a signature field.

Cryptography features vary quite considerably between .NET versions and platforms. Using a recent release of .NET is highly recommended.

In order to sign a signature, you need to use your private key. To authorize the use of this key, you need to provide your password.

If you are using a X509Certificate2 certificate with a password protected private key you need to instantiate the X509Certificate2 instance with the optional parameter X509KeyStorageFlags.Exportable. This will give the Sign method access to the private key. If the private key is not accessible this method will throw an exception. Where the private key is on a Hardware Security Module you should use the SecureString overload as shown in the example under [CompliancePades](../2-properties/compliancepades.md).

If private key is held in an PFX/PKCS #12 (.pfx or .p12) file, you need to provide a path to this file and a password to allow use of the private key.

Different digest algorithms may be used to create signatures. The default is SHA256 but you may also use SHA384, SHA512. SHA1 can be specified but is deprecated in PDF 2.0 so it is not advised.

Time-stamped signatures can be produced by using the service of a Time Stamping Authority (TSA). See [TimestampServiceUrl](../2-properties/timestampserviceurl.md). Also see [Compliance](../2-properties/compliancepades.md) for TSA requirements under different compliance levels.

If you are signing multiple signature fields in the same PDF document, you should call [Commit](commit.md) manually after each signing operation.

The overloads taking a dataType parameter allow you to use a custom delegate to sign the document. The certificate is required here as a template into which the digest can be inserted.

If the file is not available, if the file is invalid or if the password is incorrect, then this function will throw an exception.

## Example

If you would like to make your signature compliant to a specific compliance level see [Compliance](../2-properties/compliancepades.md).

Read a document and sign a signature field embedded within that document. Before signing, we specify a location and a reason why the document is being digitally signed.

In this example, for simplicity, we use the plain text password overload. However to improve application security you may wish to use the SecureString overload.

```csharp
using var doc = new Doc();
doc.Read("../Rez/Authorization.pdf");
Signature theSig = (Signature)doc.Form["Signature"];
theSig.Location = "Washington";
theSig.Reason = "Schedule Agreed";
theSig.Sign("../Rez/JohnSmith.pfx", "1234");
doc.Save("Signed.pdf");
```

Also see example code in: [Signature AddLTV Function](addltv.md), [Signature CompliancePades Property](../2-properties/compliancepades.md), [Signature CustomSigner Property](../2-properties/customsigner.md), [Signature CustomSigner2 Property](../2-properties/customsigner2.md), [Signature MaxSignatureLength Property](../2-properties/maxsignaturelength.md).
