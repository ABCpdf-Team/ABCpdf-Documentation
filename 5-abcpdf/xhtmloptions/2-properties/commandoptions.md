# CommandOptions Property

## Notes

Extra command line options to be provided to the ABCChrome HTML engine.

These flags are special switches passed to the browser executable at startup that modify its default behavior, primarily intended for developers, testers, and advanced users to debug rendering issues, test experimental features, override security policies, or optimize performance.

For example the ABCChrome engine accepts a language option to allow you to set the default locale. You can provide strings like "en-GB" or "es". For example,

They can control everything from graphics rendering (eg --disable-gpu, --show-paint-rects) and text display (eg --disable-lcd-text, --font-render-hinting=none) to security restrictions (eg --allow-file-access-from-files, --disable-web-security) and feature toggles (eg --blink-settings=imagesEnabled=false). For example,

You can find details of these flags on the Chromium site.

## Example

None.

