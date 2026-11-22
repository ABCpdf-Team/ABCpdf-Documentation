# UseResync Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to resynchronize pages. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

This property determines whether resync is enabled.

When a page is resynchronized, the server is requested to send the new version of the page on the condition that the page in the engine's cache is stale.

Setting this property to true sets INTERNET_FLAG_RESYNCHRONIZE. WinINET will send an If-Modified-Since or If-None-Match request header to allow a 304 response, and it *may* add a request header, as [UseNoCache](usenocache.md) does, to help ensure that an intermediary (proxy) does not return a previously cached result.
