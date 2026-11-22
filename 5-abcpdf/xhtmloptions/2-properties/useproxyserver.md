# UseProxyServer Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to use a proxy server. |

## Notes

This property applies to the [ABCChrome](2-forchrome.md) engine only.

This property determines whether to use a proxy server.

The process of detecting and using a proxy server involves an overhead that is usually not necessary. For this reason, by default, we do not use proxy server settings.

Setting this property to true will mean that ABCpdf will detect and use proxy server settings.

Transitioning between proxy and non-proxy settings also involves an overhead. So it is best to keep this value constant for all calls to AddImageUrl or AddImageHtml.
