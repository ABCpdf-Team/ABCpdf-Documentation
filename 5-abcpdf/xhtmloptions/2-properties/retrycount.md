# RetryCount Property

## Notes

This property applies to all the HTML engines: ABCChrome, ABCGecko, ABCWebKit and MSHTML.

This property controls how many times ABCpdf will attempt to obtain a page.

HTML rendering may fail one time but succeed the next. This is often for reasons outside the control of ABCpdf.

So ABCpdf may attempt to re-request a page if it is not immediately available. This is analogous to clicking on the refresh button of a web browser if the page is failing to load.

See the ContentCount and the Timeout properties for how ABCpdf determines if a page is unavailable or invalid.

## Example

The following example shows the effect that this parameter has on HTML rendering.

[C#] using var doc = new Doc(); string uri = "https://photojournal.jpl.nasa.gov/catalog/PIA24312"; // Set minimum number of items a page of HTML should contain. // Otherwise the page will be assumed to be invalid. doc.HtmlOptions.ContentCount = 20; // Try to obtain html page up to 11 times doc.HtmlOptions.RetryCount = 10; // The page must be obtained in less then 10 seconds doc.HtmlOptions.Timeout = 10000; try { doc.AddImageUrl(uri); } catch { // Page couldn't be loaded } // Save the document doc.Save("HtmlOptionsRetryCount.pdf");

HtmlOptionsRetryCount.pdf

Also see example code in: WebPageOperation Doc Property.

