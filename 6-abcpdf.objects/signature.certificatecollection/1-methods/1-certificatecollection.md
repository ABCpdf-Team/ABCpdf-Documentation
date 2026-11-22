# CertificateCollection Constructor

CertificateCollection Constructor.

## Syntax

*C#*

[`CertificateCollection`](../index.md)`()`  
[`CertificateCollection`](../index.md)`(`[`Signature.CertificateCollection`](../index.md)` certs)`  
[`CertificateCollection`](../index.md)`(X509Certificate2 cert)`  
[`CertificateCollection`](../index.md)`(X509Certificate2[] certs)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| certs | A Signature.CertificateCollection object or an array of System.Security.Cryptography X509Certificates.X509Certificate2 objects. |
| cert | A System.Security.Cryptography X509Certificates.X509Certificate2 object. |

## Notes

These methods construct a Signature.CertificateCollection object. Signature.CertificateCollection does not store duplicate certificates, so only one certificate object among each set of duplicates is included if an array of X509Certificate2 is provided.
