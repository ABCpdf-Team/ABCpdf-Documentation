# AddForms Property

## Notes

This property applies to the ABCChrome, ABCGecko and MSHTML engines.

This property determines whether form fields in HTML are reproduced as form fields in the final PDF output.

Form fields in PDF do not work exactly the same as form fields in HTML so while the results will be similar they may not be identical.

The ABCChrome engine relies on JavaScript for this feature, so if you set the UseScript property to false, it will cease to operate.

## Example

The following example shows the effect that this parameter has on HTML rendering.

[C#] using var doc = new Doc(); // Covert html form fields to the pdf form fields in the output file doc.HtmlOptions.AddForms = true; int id = doc.AddImageUrl("https://www.nasa.gov/forms/submit-a-question-for-nasa/"); // Save the document doc.Save("HtmlOptionsAddForms.pdf");

HtmlOptionsAddForms.pdf

