# Certify Function

Make this a certification signature.

## Syntax

```csharp
void Certify()
void Certify(PermittedChanges changes)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| changes | The document changes which will be permitted after the signature is signed. |

## Notes

Make this a certification signature.

A document may contain at most one certification signature.

A certification signature applies to the entire document as a whole and is used to determine document level integrity.

Typically a certification signature is used by the author of a document to freeze the document and specify in what ways it may be modified.

Then, if the author has allowed it, other people may apply approval signatures to the frozen document.

The PermittedChanges enumeration may take the following values:

- None - No changes are permitted.
- FormFilling - Form filling is permitted.
- Annotations - Form filling and annotation addition is permitted.
