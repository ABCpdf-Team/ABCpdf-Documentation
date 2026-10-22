# Stamp Method

Stamp this field into the document.

## Syntax

[C#]

```csharp
void Stamp()
```

## Params

| **Name** | **Description** |
| --- | --- |
| return | n/a. |

## Notes

Use this method to permanently stamp a field into the document.

When this method is called the field appearance is stamped permanently into the document and the field is deleted.

The field becomes a new layer on the page (see [Doc.LayerCount](5-abcpdf/doc/2-properties/layercount.md)) so you may wish to call [Doc.Flatten](5-abcpdf/doc/1-methods/flatten.md) on the affected page.

You can use the [XForm.Stamp](5-abcpdf/xform/1-methods/stamp.md) method to stamp all fields into the document.

Stamping is sometimes called flattening. To flatten only some fields - for example to keep signature fields - check the [FieldType](2-properties/fieldtype.md) property and skip fields of type FieldType.Signature.

## Example

None
