# AddLayers Function

Add a particular set of Layer objects from a particular Page

## Syntax

*C#*

`void AddLayers(`[`Page`](../../../6-abcpdf.objects/page/index.md)` page, `[`Layer`](../../../6-abcpdf.objects/layer/index.md)`[] layers)`

## Params

| Name | Description |
| :---: | --- |
| page | The page on which the provided layers are located. |
| layers | The layers to be added. |

## Notes

Add a particular set of Layer objects from a particular Page.

This is an alternative to the [AddPages](addpages.md) overloads. It allows specific parts of a page to be added to the operation rather than requiring the operation to be applied to the entirety of a page.
