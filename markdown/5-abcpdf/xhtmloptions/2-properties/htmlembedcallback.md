# HtmlEmbedCallback Property

&nbsp;

## Notes

This delegate is called when embedding an object.

Objects embedded in HTML, such as those with the embed HTML tags, will trigger the callback if they are of certain content types. This callback provides a way to change the parameters of the embedded objects.

The definition of the HtmlEmbedCallback multicast delegate is as follows.

[C#] delegate void HtmlEmbedCallback(Doc doc, HtmlEmbedInfo info);

[Visual Basic] Delegate Sub HtmlEmbedCallback(doc As Doc, info As HtmlEmbedInfo);

doc is the target Doc for the added HTML. The properties of HtmlEmbedInfo are as follows:

Property of HtmlEmbedInfo Type Default Value Read Only Description

Url [C#] string

[Visual Basic] String

n/a Yes The URL of the embedded object.

BaseUrl [C#] string

[Visual Basic] String

n/a Yes The base URL for resolving relative URLs. This could be the URL of the HTML or the URL from the base tag.

EmbedType HtmlEmbedType

See description. Yes The content type of the embedded object. See the table below for the possible values.

ParameterNamesAreCaseSensitive [C#] bool

[Visual Basic] Boolean

n/a Yes Indicates whether parameter names are case-sensitive.

Parameters HtmlParameterDictionary

n/a Yes The parameters for the embedded object. It depends on the value of EmbedType. The public API of HtmlParameterDictionary closely resembles that of System.Collections.Generic.Dictionary. It behaves like a dictionary with string keys and HtmlParameter values.

Parameters depends on EmbedType as follows:

EmbedType EmbedType Description ParameterNamesAreCaseSensitive Parameters

None No content. This value is not used.

Swf SWF files true if the version of the SWF file is 7 or above. Parameters contains those in the FlashVars parameter and the parameters in the URL of the SWF file.

The values in HtmlParameterDictionary are of type HtmlParameter.

Property of HtmlParameter Type Default Value Read Only Description

Value [C#] string

[Visual Basic] String

n/a No The parameter value.

Conversion HtmlParameterConversionType

None No The conversion for the value.

HtmlParameterConversionType Description

None No conversion.

UrlToTextFileContent Sets the value to the text content of the file pointed to by Value as a URL.

## Example

The following example shows the effect that this parameter has on 
            HTML rendering.

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
doc.Save(Server.MapPath("HtmlOptionsEmbedCallback.pdf")); // Windows specific);
```

