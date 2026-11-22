# Import Method

Imports the certificates from the file for those whose values are not already present.

## Syntax

```csharp
int Import(string path)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| path | The path to the file. |
| return | The number of certificate objects added. |

## Notes

This method imports the certificates from the file for those whose values are not already present. Signature.CertificateCollection does not store duplicate certificates, so only one certificate object among each set of duplicates is added.
