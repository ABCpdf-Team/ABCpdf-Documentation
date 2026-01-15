# DeactivateWebBrowser Property

&nbsp;

## Notes

This property determines whether the WebBrowser is deactivated before rendering.

By default, if vector-output coercion is not activated, the WebBrowser is deactivated because an active WebBrowser may produce a rasterized output.

In some cases, you may want to set this to false and possibly disable vector-output coercion in order to render pages, such as Google Maps, that require the WebBrowser to be active.

