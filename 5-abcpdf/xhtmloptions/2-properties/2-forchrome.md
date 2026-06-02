# ForChrome Property

## Notes

The HTML options supported by the ABCChrome engine.

## Example

[C#] using var doc = new Doc(); doc.HtmlOptions.Engine = EngineType.Chrome146; doc.HtmlOptions.ForChrome.AddLinks = true; // You can store a reference to the filter to reduce code repetition var options = doc.HtmlOptions.ForChrome; options.UseScript = false; options.AddTags = true; doc.AddImageUrl("http://www.websupergoo.com"); doc.Save("wsg1.pdf");

