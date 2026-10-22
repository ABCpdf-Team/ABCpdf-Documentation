# PageCacheExpiry Property

## Notes

This property applies to the MSHTML engine only.

ABCpdf holds a cache of recently requested URLs and it's only after five minutes or so that these pages expire from the cache.

This results in a considerable degree of optimization for many common operations.

You can modify the length of time that pages are held in the cache using this parameter. This value cannot be reduced to zero.

This value is measured in milliseconds.

## Example

None.

