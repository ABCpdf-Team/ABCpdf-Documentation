# ImportAt Method

Imports at the specified position the certificates from the file for those whose values are not already present.

## Syntax

```csharp
int ImportAt(int index, string path)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| index | The index into this collection for insertion. |
| path | The path to the file. |
| return | The number of certificate objects added. |

## Notes

This method imports at the specified position the certificates from the file for those whose values are not already present. Signature.CertificateCollection does not store duplicate certificates, so only one certificate object among each set of duplicates is added.
