# PageContents Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`PageContents`](../../8-pagecontents/index.md) | n/a | No | The pages to be operated upon. |

## Notes

This property specifies the pages to be operated upon.

Adding pages to a PageContents object can be a costly procedure taking a noticable amount of time.

So if you are performing a set of analysis operations on the same pages it can be more efficient to assign the PageContents from one to another rather than repeatedly re-populate from the original document.

## Example

Also see example code in: [ImageOperation GetImageProperties Function](../1-methods/getimageproperties.md).
