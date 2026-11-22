# ReloadPage Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to reload page. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

This property determines whether the page is reloaded from the server. If it is true, [PageLoadMethod](pageloadmethod.md) must be effectively MonikerForHtml.

When a page is to be reloaded, all proxy servers will request the page anew, the page cache is not searched, and if the page cache is enabled, the reloaded page is stored in the page cache.

Setting this property to true sets INTERNET_FLAG_RELOAD. WinINET will bypass the cache (redownloading all entries), (will not send an If-Modified-Since or If-None-Match request header on these requests (Unconditional request; server cannot return a HTTP/304),) and will add a request header, as [UseNoCache](usenocache.md) does, to help ensure that an intermediary/proxy does not return a previously cached result.
