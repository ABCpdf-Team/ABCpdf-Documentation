# HostWebBrowser Property

## Notes

This property applies to the MSHTML engine only.

This property determines whether a WebBrowser control is hosted.

By default, a WebBrowser control is hosted. Script-accessible properties (left, top, width, height, offsetLeft, offsetTop, offsetWidth, offsetHeight, clientLeft, clientTop, clientWidth, clientHeight, pixelLeft, pixelTop, pixelWidth, pixelHeight, posLeft, posTop, posWidth, and posHeight) hold their proper values. The source document can be in any format as long as it is HTML-compatible. For example, XML (with or without XSL applied) can be used because the WebBrowser control transforms it to HTML.

When no WebBrowser control is hosted, script-accessible dynamic, geometric properties are always zero.

This property affects the CoerceVector property.

## Example

None.

