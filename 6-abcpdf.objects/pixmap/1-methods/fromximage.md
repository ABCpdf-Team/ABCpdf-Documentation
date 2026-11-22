# FromXImage Function

PixMap static constructor

## Syntax

*C#*

`static PixMap FromXImage(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup, `[`XImage`](../../../5-abcpdf/ximage/index.md)` image)`

## Params

| Name | Description |
| :---: | --- |
| soup | The ObjectSoup to contain the newly created PixMap. |
| image | The XImage from which the PixMap should be created. |

## Notes

This method allows you to create a PixMap directly from an XImage object.

The PixMap that is created exists within the current Doc.Soup but is not linked into any pages.

To link the PixMap into a page it needs to be added as a resource and then drawn from the content stream of the page.
