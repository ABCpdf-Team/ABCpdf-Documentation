# PageCacheClear Method

Clears the HTML page cache.

## Syntax

```csharp
void PageCacheClear()
```

## Params

| Name | Description |
| --- | --- |
| return | n/a. |

## Notes

ABCpdf holds a cache of recently requested URLs and it's only after five minutes or so that these pages expire from the cache.

This results in a considerable degree of optimization for many common operations.

You can clear the cache of all pages by calling this method.

