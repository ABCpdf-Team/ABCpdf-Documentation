# HideBackground Property

## Notes

This property applies to all the HTML engines: ABCChrome, ABCGecko, ABCWebKit and MSHTML.

Whether to hide the background color of an HTML page.

This can be useful for making HTML pages with transparent backgrounds.

Note that the background color is not the same as a background image or tiled image. This property operates on background colors only.

## Example

The following example shows the effect that this parameter has on HTML rendering.

[C#] using var doc = new Doc(); // Please note that the URL below is included for demonstration purposes only. // In your code you should use your own URL. The site at the URL below // may include other opaque elements which may obscure our blue rectangle. string url = "https://www.websupergoo.com/"; // Add some content doc.Color.String = "0 255 255"; // light blue doc.FillRect(200, 200); // Hide the background of the HTML page so content shows through doc.HtmlOptions.HideBackground = true; doc.AddImageUrl(url); // Save the document doc.Save("HtmlOptionsHideBackground.pdf");

HtmlOptionsHideBackground.pdf

