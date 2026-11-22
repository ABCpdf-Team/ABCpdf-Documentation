# LockFields Function

Lock document fields to stop them being modified.

## Syntax

```csharp
void LockFields()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Lock document fields to stop them being modified.

This produces a "Document Locked by Signature" message in the revision history and the document can no longer be modified. This function is known in Acrobat as 'Lock document after signing'.
