# DeactivateWebBrowser Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | true | No | Whether to deactivate the WebBrowser. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

This property determines whether the WebBrowser is deactivated before rendering.

By default, if [vector-output coercion](coercevector.md) is not activated, the WebBrowser is deactivated because an active WebBrowser may produce a rasterized output.

In some cases, you may want to set this to false and possibly disable vector-output coercion in order to render pages, such as Google Maps, that require the WebBrowser to be active.

## Example

None
