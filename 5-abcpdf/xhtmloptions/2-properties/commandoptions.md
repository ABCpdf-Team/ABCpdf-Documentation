# CommandOptions Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Dictionary<string, string>` | null | No | A set of options for the HTML engine. |

## Notes

Extra command line options to be provided to the ABCChrome HTML engine.

These flags are special switches passed to the browser executable at startup that modify its default behavior, primarily intended for developers, testers, and advanced users to debug rendering issues, test experimental features, override security policies, or optimize performance.

For example the ABCChrome engine accepts a language option to allow you to set the default locale. You can provide strings like "en-GB" or "es". For example,

```csharp
var doc = new Doc();
doc.HtmlOptions.CommandOptions = new Dictionary<string, string>();
doc.HtmlOptions.CommandOptions["accept-lang"] = "es"; // --accept-lang=es
```

They can control everything from graphics rendering (eg --disable-gpu, --show-paint-rects) and text display (eg --disable-lcd-text, --font-render-hinting=none) to security restrictions (eg --allow-file-access-from-files, --disable-web-security) and feature toggles (eg --blink-settings=imagesEnabled=false). For example,

```csharp
var doc = new Doc();
doc.HtmlOptions.CommandOptions = new Dictionary<string, string>();
doc.HtmlOptions.CommandOptions["blink-settings=imagesEnabled=false"] = null; // --blink-settings=imagesEnabled=false
```

You can find details of these flags on the [Chromium](https://www.chromium.org/developers/how-tos/run-chromium-with-flags/) site.
