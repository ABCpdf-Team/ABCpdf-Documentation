# PageCacheExpiry Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 300,000 | No | The length of time that pages can be held in the cache (ms). |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

ABCpdf holds a cache of recently requested URLs and it's only after five minutes or so that these pages expire from the cache.

This results in a considerable degree of optimization for many common operations.

You can modify the length of time that pages are held in the cache using this parameter. This value cannot be reduced to zero.

This value is measured in milliseconds.
