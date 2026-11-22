# VirtualPageOperation Function

Create a [VirtualPageOperation](../index.md).

## Syntax

*C#*

[`VirtualPageOperation`](../index.md)`(Doc doc)`  
[`VirtualPageOperation`](../index.md)`(Doc doc, double width, double height)`  
[`VirtualPageOperation`](../index.md)`(Doc doc, XRect rect)`

## Params

| Name | Description |
| :---: | --- |
| doc | The Doc for which the page is intended. |
| width | The width of the page in points. |
| height | The height of the page in points. |
| rect | The rectangle for the page in points. |

## Notes

Create a [VirtualPageOperation](../index.md).

If no page dimensions are specified the page will default to the current document MediaBox.

Creating this process sets the current Doc.Page to the newly created virtual page. This means you can immediately use Doc methods to add content to this page.

However it also means that after you have finished with this object, you will need to set the Doc.Page before you can add content to existing pages of the document.
