# PageCacheEnabled Property

## Notes

This property applies to the MSHTML engine only.

ABCpdf holds a cache of recently requested URLs, and it's only after five minutes or so that these pages expire from the cache.

Searching the page cache before rendering a URL results in a considerable degree of optimization for many common operations.

However, if you wish to bypass the cache, you can do so by setting this property to false. When the cache is disabled, the registry value MakeURLsUnique takes effect, and the actual URL may be modified.

## Example

Also see example code in: XHtmlOptions UseScript Property.

