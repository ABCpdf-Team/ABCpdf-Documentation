# AddRange Method

Adds the certificate objects to this collection for those whose values are not already present.

## Syntax

*C#*

`int AddRange(X509Certificate2[] certs)`  
`int AddRange(`[`Signature.CertificateCollection`](../index.md)` certs)`  
`int AddRange(`[`Signature.CertificateCollection`](../index.md)` certs, int startIndex, int count)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| certs | An array of System.Security.Cryptography X509Certificates.X509Certificate2 objects; or a Signature.CertificateCollection object. |
| startIndex | The index of the first certificate object in certs to add. |
| count | The number of certificate objects in certs to add. |
| return | The number of certificate objects added. |

## Notes

These methods add the certificate objects to the collection for those whose values are not already present. Signature.CertificateCollection does not store duplicate certificates, so only one certificate object among each set of duplicates is added.
