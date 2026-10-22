# Overprint Property

## Notes

Overprint is a way of combining colors when dealing with subtractive color spaces such as CMYK or DeviceN. Normally when one color is painted over another it replaces the underlying color. So a yellow over a magenta becomes yellow. If Overprint is set, then the top color may be placed over the top of the base color. So yellow over magenta becomes a mixture of both yellow and magenta inks, which creates red. This can be useful for printing purposes. If Overprint is true, and NamedSeparation is blank, an overprint preview is created that is designed to simulate the look of a document when inks are overprinted according to the details in the pdf. For more information on overprinting, please see the Adobe PDF Specification. Acrobat Display. The default overprint settings are subtly different in Acrobat than in other common viewers like Chrome.

Acrobat allows you to choose whether to simulate overprint or not. The settings for this are under the Page Display preferences. The default value for this is "Only For PDF/X Files" so if a file is seen to be is PDF/X, then overprint will be automatically set to true. This is a little different from ABCpdf, Chrome and other common viewers, which have a default value of false.

If you wish to detect PDF/X files so that you can set the overprint flag, simply use a function of the following form.

[C#]

## Example

The following example shows the effect that this parameter has on PDF rendering.

[C#] using var doc = new Doc(); // Open document with overprint doc.Read("../mypics/Overprint.pdf"); // Render the document (we need to go to CMYK for overprint) doc.Rendering.ColorSpace = XRendering.ColorSpaceType.Cmyk; doc.Rendering.Overprint = true; doc.Rendering.IccRgb = "device"; doc.Rendering.IccGray = "device"; doc.Rendering.IccCmyk = "device"; doc.Rendering.IccOutput = "device"; // Put image back into another PDF and render the document as RGB, // so that we can see the effect of the overprint in RGB. using var theRgb = new Doc(); theRgb.AddImageData(doc.Rendering.GetData(".tif"), 1); theRgb.Rendering.DotsPerInch = 36; theRgb.Rendering.ColorSpace = XRendering.ColorSpaceType.Rgb; theRgb.Rendering.Save("RenderingOverprint.png");

RenderingOverprint.png

