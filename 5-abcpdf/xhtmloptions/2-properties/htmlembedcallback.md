# HtmlEmbedCallback Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | null | No | The multicast delegate to be called when embedding an object while HTML rendering is taking place. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

This delegate is called when embedding an object.

Objects embedded in HTML, such as those with the embed HTML tags, will trigger the callback if they are of certain content types. This callback provides a way to change the parameters of the embedded objects.

The definition of the HtmlEmbedCallback multicast delegate is as follows.

[C#]delegate void HtmlEmbedCallback([Doc](doc/default.md) doc, HtmlEmbedInfo info);

doc is the target Doc for the added HTML. The properties of HtmlEmbedInfo are as follows:

Parameters depends on EmbedType as follows:

The values in HtmlParameterDictionary are of type HtmlParameter.

The HtmlParameterConversionType enumeration may take the following values:

* None - No conversion.
* UrlToTextFileContent - Sets the value to the text content of the file pointed to by Value as a URL.

## Example

The following example shows the effect that this parameter has on HTML rendering.

[C#]

```csharp
using var doc = new Doc();
string uri = "https://www.websupergoo.com/";
// Set up the callback
doc.HtmlOptions.HtmlEmbedCallback = (Doc d, HtmlEmbedInfo info) => {
  if (info.EmbedType == HtmlEmbedType.Swf) {
    HtmlParameter param;
    if (info.Parameters.TryGetValue("dataURL", out param)) {
      info.Parameters.Remove("dataURL");
      param.Conversion = HtmlParameterConversionType.UrlToTextFileContent;
      info.Parameters["dataXML"] = param;
    }
  }
};
// Render html page
doc.AddImageUrl(uri);
// Save the document
doc.Save("HtmlOptionsEmbedCallback.pdf");
```

