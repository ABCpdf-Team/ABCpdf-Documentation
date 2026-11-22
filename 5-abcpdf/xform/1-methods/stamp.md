# Stamp Method

Stamp all fields into the document.

## Syntax

```csharp
void Stamp()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Use this method to permanently stamp all fields into the document.

When this method is called all field appearances are stamped permanently into the document and the fields are deleted.

Each field becomes a new layer on the page (see [Doc.LayerCount](../../doc/2-properties/layercount.md)) so you may wish to call [Doc.Flatten](../../doc/1-methods/flatten.md) on any affected pages.

You can use the [Field.Stamp](../../../6-abcpdf.objects/field/1-methods/stamp.md) method to stamp individual fields into the document.

## Example

Also see example code in: [ABCpdf eForm Stamp Example](../../../4-examples/15-eform3.md).
