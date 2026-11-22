# PageCacheEnabled Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether the page cache should be searched before rendering the page. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

ABCpdf holds a cache of recently requested URLs, and it's only after five minutes or so that these pages expire from the cache.

Searching the page cache before rendering a URL results in a considerable degree of optimization for many common operations.

However, if you wish to bypass the cache, you can do so by setting this property to false. When the cache is disabled, the registry value [MakeURLsUnique](../../../3-concepts/d-registrykeys.md) takes effect, and the actual URL may be modified.

## Example

Also see example code in: [XHtmlOptions UseScript Property](usescript.md).
