# PageCacheSize Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 100 | No | The number of pages that can be held in the cache. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

ABCpdf holds a cache of recently requested URLs and it's only after five minutes or so that these pages expire from the cache.

This results in a considerable degree of optimization for many common operations.

You can modify the number of items which can be held in the URL cache using this parameter. This value cannot be reduced to zero.
