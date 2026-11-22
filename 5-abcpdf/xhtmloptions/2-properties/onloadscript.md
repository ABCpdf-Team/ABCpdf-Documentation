# OnLoadScript Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "" | No | A script to be run after the page is loaded. |

## Notes

This property applies to all the HTML engines: [ABCChrome](2-forchrome.md), [ABCGecko](2-forgecko.md), [ABCWebKit](2-forwebkit.md) and [MSHTML](2-formshtml.md).

A client side JavaScript to be applied to a web page before the page is rendered to PDF.

This kind of script can be used for a variety of purposes. For example you might wish to hide background images or get pre-render information from the document.

You can provide a return value by setting an "abcpdf" property in the documentElement. For example:

```csharp
document.documentElement.abcpdf = "my return value";
```

The return value can be accessed using the [GetScriptReturn](../1-methods/getscriptreturn.md) method with the ID returned from [Doc.AddImageUrl](../../doc/1-methods/addimageurl.md) or [Doc.AddImageHtml](../../doc/1-methods/addimagehtml.md).

For the MSHtml engine, you must have the [UseScript](usescript.md) key set to true or you will get an "access denied" error; the return value can only be set inside [OnLoadScript](onloadscript.md). The Gecko engine does not have these restrictions.

For the MSHtml engine, the script in this property is executed after the page load is complete, so it may be executed before or after any script in the web page that is executed after the completion of page load.

For the Gecko engine, the script in this property may be executed before or after any event-triggered script in the web page. For example, if you set window.ABCpdf_go to false in OnLoadScript, but the event listener that sets window.ABCpdf_go to true is in the script in the web page, you should check the value of window.ABCpdf_go (initially undefined) before setting it to false in OnLoadScript.

```csharp
doc.HtmlOptions.OnLoadScript = "if(!window.ABCpdf_go) window.ABCpdf_go = false;";
```

For the ABCChrome engine, the script is run at the point that the page and all resources that are referred to by the page, are loaded.

## Example

See the [UseScript](usescript.md) property.

Also see example code in: [XHtmlOptions UseScript Property](usescript.md).
