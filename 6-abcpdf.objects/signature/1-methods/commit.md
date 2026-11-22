# Commit Function

Commit a previously signed signature to the document.

## Syntax

```csharp
void Commit()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

After a signature is signed, it needs to be committed to the document.

Normally, this is done when you save the document. It happens invisibly without you needing to do anything. However, sometimes, you may wish to commit before the document is saved. This most commonly occurs if you are working with documents containing more than one signature field.

The PDF architecture requires that a document be incrementally updated each time a signature is signed. It requires this so that a PDF viewer can show what changes were made to the document between the times it was signed. For this reason, if you are signing multiple fields, each signature (bar the last) needs to be signed and then committed in turn. The last signature does not need to be committed because this is implicitly done by the final save.

A Commit operation involves an implicit [Doc.Save](../../../5-abcpdf/doc/1-methods/save.md) event. For this reason it is important that the [Doc.SaveOptions](../../../5-abcpdf/doc/2-properties/saveoptions.md) are appropriately set up before the signature is Committed. If you intending to commit to a document containing multiple signatures you will want to ensure that the [XSaveOptions.Incremental](../../../5-abcpdf/xsaveoptions/2-properties/incremental.md) property is set.

Similarly after each commit, all previous references to form fields are invalidated. You need to obtain updated references to form fields from the [Doc.Form.Fields](../../../5-abcpdf/xform/2-properties/fields.md) property.

## Example

Also see example code in: [Signature AddLTV Function](addltv.md), [Signature CustomSigner2 Property](../2-properties/customsigner2.md).
