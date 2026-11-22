# Stamp Function

Stamp this annotation into the page.

## Syntax

```csharp
void Stamp()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Use this method to permanently stamp an annotation into the page on which it is located.

When this method is called the annotation appearance is stamped permanently into the document and the annotation is deleted.

The annotation becomes a new layer on the page (see [Doc.LayerCount](../../../5-abcpdf/doc/2-properties/layercount.md)) so you may wish to call [Doc.Flatten](../../../5-abcpdf/doc/1-methods/flatten.md) on the affected page.
