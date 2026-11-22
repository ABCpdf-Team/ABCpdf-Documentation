# Timeout Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 20,000 | No | The maximum amount of time allowed for obtaining a page (ms). |

## Notes

This property applies to all the HTML engines: [ABCChrome](2-forchrome.md), [ABCGecko](2-forgecko.md), [ABCWebKit](2-forwebkit.md) and [MSHTML](2-formshtml.md).

HTML rendering can take some time.

If the time taken exceeds the Timeout then the page is assumed to be unavailable. Depending on the [RetryCount](retrycount.md) settings the page may be re-requested or an error may be returned. This value is measured in milliseconds.

For cases in which you have the HTML you do not really need a retry so you can set the RetryCount to zero. If you do not do this the default is five. So if your HTML takes 350 seconds to process and your Timeout is 300 seconds then it will time out six times before returning. You allow five minutes but you actually take thirty and still fail to load the HTML because each try does not have enough time.

## Example

See the [RetryCount](retrycount.md) property.

Also see example code in: [XHtmlOptions RetryCount Property](retrycount.md).
