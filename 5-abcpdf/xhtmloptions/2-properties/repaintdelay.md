# RepaintDelay Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | Minimum time to wait for the page to finish animation (ms). |

## Notes

This property applies to the [ABCChrome](2-forchrome.md) engine only.

This feature allows you to cope with web pages that animate.

Most web pages simply load and complete. However some web pages may not complete in a simple manner. For example graphs may draw themselves, maps may update, images may move. These are all features associated with more dynamic modern HTML and AJAX based pages.

To cope with this we introduce the concept of a RepaintDelay and a [RepaintTimeout](repainttimeout.md).

When the page has finished loading we wait to see what drawing occurs and/or observing changes in the DOM. Each time the page updates - drawing occurs or the DOM changes - we set a timer back to zero.

If the timer reaches the RepaintDelay limit then we assume that the page has reached a ready state. At that point we convert it to PDF.

If the total time exceeds the RepaintTimeout we assume that the page is never going to reach a ready state. At that point we convert whatever we have to PDF.

This value is measured in milliseconds.

DOM observation is the most accurate measure of detecting changes in the page but requires [HtmlOptions.UseScript](usescript.md) to be set to its default value of true.
