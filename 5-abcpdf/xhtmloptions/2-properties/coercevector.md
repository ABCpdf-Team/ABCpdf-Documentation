# CoerceVector Property

## Notes

This property applies to the MSHTML engine only.

The HtmlRenderConditions enumeration can take a combination of the following values:

This property determines when to coerce vector outputs if this is not disabled by DisableVectorCoercion. This requires the Microsoft XPS Document Writer printer and hosting a WebBrowser. When the printer is not available or HostWebBrowser is false, this property is ignored and assumed Never.

When certain constructs, such as DirectX filters or ActiveX controls, are used in the HTML page, the output may become rasterized. When vector-output coercion is activated, a vector output is produced, but the objects that cause the rasterization of the output may not appear in the vector output.

When vector-output coercion is activated, DeactivateWebBrowser is ignored and assumed false.

## Example

None.

