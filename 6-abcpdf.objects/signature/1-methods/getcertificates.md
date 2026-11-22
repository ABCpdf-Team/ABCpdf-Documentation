# GetCertificates Function

Extract the encoded X.509 data of the certificate(s).

## Syntax

```csharp
IEnumerable<byte[]> GetCertificates()
IEnumerable<byte[]> GetCertificates(out int outCount)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| outCount | The number of certificates. |
| return | The encoded X.509 data for the certificate(s). |

## Notes

Use this method to extract the encoded X.509 data of the certificate that was used to sign the document. Normally, there is only one certificate returned, but for some documents, you may receive additional certificates that can be used to create a certificate chain. In such cases, the first certificate is always the certificate that was used for signing.

You can pass the data returned by this function to the X509Certificate2 class constructor in System.Security.Cryptography.X509Certificates and then extract certificate details such as the subject, the issuer, the serial number, the version, etc. See the Annotations example project for details.
