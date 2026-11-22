# CoerceVector Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `HtmlRenderConditions` | Default | No | The conditions under which to coerce a vector output. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

The HtmlRenderConditions enumeration can take a combination of the following values:

- Never – never coerce a vector output.
- Always – always coerce a vector output.
- Default – coerce a vector output under the default conditions. It currently behaves the same as OnFiltersDisabled.
- OnFiltersDisabled – coerce a vector output when some DirectX filter is disabled.
- OnPartialContent – ignored.
- OnVectorCoercionFailed – ignored.

This property determines when to coerce vector outputs if this is not disabled by [DisableVectorCoercion](disablevectorcoercion.md). This requires the Microsoft XPS Document Writer printer and hosting a WebBrowser. When the printer is not available or [HostWebBrowser](hostwebbrowser.md) is false, this property is ignored and assumed Never.

When certain constructs, such as DirectX filters or ActiveX controls, are used in the HTML page, the output may become rasterized. When vector-output coercion is activated, a vector output is produced, but the objects that cause the rasterization of the output may not appear in the vector output.

When vector-output coercion is activated, [DeactivateWebBrowser](deactivatewebbrowser.md) is ignored and assumed false.
