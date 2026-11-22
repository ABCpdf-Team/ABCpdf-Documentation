# AddLayer Function

Add a content layer to the page

## Syntax

*C#*

`int AddLayer(string text)`  
`int AddLayer(byte[] data)`  
`int AddLayer(`[`StreamObject`](../../streamobject/index.md)` stream)`  
`int AddLayer(string text, int index)`  
`int AddLayer(byte[] data, int index)`  
`int AddLayer(`[`StreamObject`](../../streamobject/index.md)` stream, int index)`

## Params

| Name | Description |
| :---: | --- |
| text | The ASCII text to be added - typically a set of PDF drawing operators. |
| data | The data to be added - typically an ASCII representation of a set of PDF drawing operators. |
| stream | The stream that should be added as a new layer on page. |
| index | The index at which the layer should be added. The bottom layer is zero and the layers draw in sequence when displayed. If the index is greater than or equal to the number of layers then the new layer will be added at the top. |
| return | The Object ID of the newly added StreamObject. |

## Notes

Add a content layer to the page.

By default the layer will go at the top or front of the page. By supplying an index parameter you can position your new layer behind other layers that already exist.

Layers draw in sequence when displayed which means that later layers may draw over the top of earlier layers.

Any [StreamObject](../../streamobject/index.md) that is supplied should contain PDF drawing operations. The data and text overloads are convenience functions for common operations.

You will need to ensure that any resources that are referenced in this content stream have been added to the resources of the page using a method such as [AddResource](addresource.md).

## Example

Also see example code in: [Page MakeFormXObject Function](makeformxobject.md), [OpAtom Find Function](../../../7-abcpdf.atoms/opatom/1-methods/find.md).
