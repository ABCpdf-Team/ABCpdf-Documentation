# IndexOf Method

Gets the index of the certificate object's value.

## Syntax

```csharp
int IndexOf(X509Certificate2 cert)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| cert | The certificate object. |
| return | The index of the certificate object or of its value in this collection if found; -1 otherwise. |

## Notes

This method returns the index of the certificate object's value.

Because of the no-duplicate policy of Signature.CertificateCollection, it is not recommended to remove certificate objects to undo a previous addition to the collection unless you are sure that the certificate object has been successfully added at that particular addition. You may want to consider using the [copy constructor](1-certificatecollection.md) to make a copy of the collection, instead, before doing the addition.
