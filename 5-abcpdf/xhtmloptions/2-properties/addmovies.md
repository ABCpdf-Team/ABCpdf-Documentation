# AddMovies Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | false | No | Whether active content such as movies should be added. |

## Notes

This property applies to the [ABCGecko](2-forgecko.md) (Flash only) and [MSHTML](2-formshtml.md) engines.

Enables the embedding of active content such as Flash (SWF), AVI, MPEG and WMV.

---
**Flash / SWF Previews.**
ABCpdf will automatically create a still preview of Flash (SWF) movies.

The preview is what you will see if you do not have Flash installed. It is what is used when printing PDFs. In general it is what you will see if you open your PDF using a viewer other than Acrobat.

The preview needs to be created at a certain resolution and using content from a particular point in the movie. By default the values are taken from the FlashPreviewTime and FlashPreviewDPI [Registry Keys](3-concepts/d-registrykeys.md). However you can specify ABCpdf_PreviewTime and ABCpdf_PreviewDPI attributes within your EMBED tag to override these defaults.

Some movies take time to draw themselves because they use script to determine how they should appear. You can use the ABCpdf_PreviewWaitTime attribute to determine the time (in milliseconds) that the movie will be given to initialize itself before the preview is made.

For example to take a preview 2000 ms into the movie at 300 dpi you might use the following HTML.

<EMBED src="frogger.swf" WIDTH="700" HEIGHT="500" ABCpdf_PreviewWaitTime="2000" ABCpdf_PreviewDPI="300"></EMBED>

These attributes are useful if your settings are dependent on the content within the movie rather than on the PDF.

---

## Example

None
