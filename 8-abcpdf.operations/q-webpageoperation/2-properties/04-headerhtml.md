# HeaderHtml Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Any HTML header required for the page. |

## Notes

Any HTML header required for the page.

Ensure you have set an appropriate margin at the top of the page if you want to use this property.

The HTML content area is defined by the Doc.Rect. Headers go above the Doc.Rect. Footers go below it.

As such if you set headers you need to ensure that you leave sufficient room between the top of the Doc.Rect and the top of the Doc.MediaBox.

There are special HTML tags you can use to insert pre-defined content.

- \<span class=date>\</span>
- \<span class=title>\</span>
- \<span class=url>\</span>
- \<span class=pageNumber>\</span>
- \<span class=totalPages>\</span>

## Example

See example code in: [WebPageOperation Doc Property](01-doc.md).
