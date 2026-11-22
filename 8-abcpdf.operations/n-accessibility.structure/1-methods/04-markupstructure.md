# MarkupStructure Function

Mark up the structure on the PDF pages so that it can be seen in a PDF reader.

## Syntax

```csharp
void MarkupStructure()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Mark up the structure on the PDF pages so that it can be seen in a PDF reader.

The markup depends on the presence of Actual Text and Bounding Boxes in the structure tree. As such you may need to regenerate these using [UpdateActualText](05-updateactualtext.md) before calling this method.

## Example

Also see example code in: [Focus OpaqueTypes Property](../../../5-abcpdf/xtagging.focus/2-properties/opaquetypes.md).
