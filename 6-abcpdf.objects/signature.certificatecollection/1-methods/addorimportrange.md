# AddOrImportRange Method

Adds the certificate objects or imports the certificates from the files to this collection for those whose values are not already present.

## Syntax

```csharp
int AddOrImportRange(IEnumerable certs)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| certs | A System.Collections.IEnumerable of (System.Security.Cryptography X509Certificates.X509Certificate2) certificate objects and (string) file paths. |
| return | The number of certificate objects added. |

## Notes

This method adds the certificate objects to the collection for those whose values are not already present. Each item in certs must be either an X509Certificate2 object or a string. Signature.CertificateCollection does not store duplicate certificates, so only one certificate object among each set of duplicates is added.
