# HtmlOptions Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`XHtmlOptions`](../../xhtmloptions/index.md) | n/a | Yes | The HTML and URL rendering options. |

## Notes

This property allows you control over the way that HTML is rendered.

The properties of this object may be used to control the way that the [AddImageUrl](../1-methods/addimageurl.md) and [AddImageHtml](../1-methods/addimagehtml.md) methods work.

The methods of this object operate on objects added using the theAddImageUrl and AddImageHtml methods. Some operations change the content. Others provide information about the content which has been added.

See the [XHtmlOptions](../../xhtmloptions/index.md) object for further details.

This property is read only, but the object it returns can be modified.

## Example

Also see example code in: [ABCpdf Paged HTML Example](../../../4-examples/13-pagedhtml.md), [XHtmlOptions GetTagRects Function](../../xhtmloptions/1-methods/gettagrects.md), [XHtmlOptions LinkDestinations Method](../../xhtmloptions/1-methods/linkdestinations.md), [XHtmlOptions LinkPages Method](../../xhtmloptions/1-methods/linkpages.md), [XHtmlOptions ForChrome Property](../../xhtmloptions/2-properties/2-forchrome.md), [XHtmlOptions ForGecko Property](../../xhtmloptions/2-properties/2-forgecko.md), [XHtmlOptions ForMSHtml Property](../../xhtmloptions/2-properties/2-formshtml.md), [XHtmlOptions ForWebKit Property](../../xhtmloptions/2-properties/2-forwebkit.md), [XHtmlOptions AddForms Property](../../xhtmloptions/2-properties/addforms.md), [XHtmlOptions BrowserWidth Property](../../xhtmloptions/2-properties/browserwidth.md), [XHtmlOptions FireShield Property](../../xhtmloptions/2-properties/fireshield.md), [XHtmlOptions HideBackground Property](../../xhtmloptions/2-properties/hidebackground.md), [XHtmlOptions HtmlCallback Property](../../xhtmloptions/2-properties/htmlcallback.md), [XHtmlOptions HtmlEmbedCallback Property](../../xhtmloptions/2-properties/htmlembedcallback.md), [XHtmlOptions HttpAdditionalHeaders Property](../../xhtmloptions/2-properties/httpadditionalheaders.md), [XHtmlOptions ImageQuality Property](../../xhtmloptions/2-properties/imagequality.md), [XHtmlOptions LogonName Property](../../xhtmloptions/2-properties/logonname.md), [XHtmlOptions RetryCount Property](../../xhtmloptions/2-properties/retrycount.md), [XHtmlOptions UseScript Property](../../xhtmloptions/2-properties/usescript.md), [WebPageOperation Doc Property](../../../8-abcpdf.operations/q-webpageoperation/2-properties/01-doc.md).
