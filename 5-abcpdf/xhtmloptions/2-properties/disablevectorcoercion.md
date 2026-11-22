# DisableVectorCoercion Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `HtmlRenderConditions` | Default | No | The conditions under which to disable vector-output coercion. |

⚠ `may throw Exception()`

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

The HtmlRenderConditions enumeration can take a combination of the following values:

- Never – never disable vector-output coercion.
- Always – always disable vector-output coercion.
- Default – disable vector-output coercion under the default conditions. It currently behaves the same as OnPartialContent Or OnVectorCoercionFailed.
- OnFiltersDisabled – disable vector-output coercion when some DirectX filter is disabled.
- OnPartialContent – disable vector-output coercion when the HTML page size is bigger than the size supported by vector-output coercion.
- OnVectorCoercionFailed – continue rendering without vector-output coercion when vector-output coercion has failed.

This property determines when to disable vector-output coercion if the coercion is otherwise activated as specified by [CoerceVector](coercevector.md). There is a size limit to the coerced vector output. If the HTML page size is bigger than the limit, the vector output is clipped so the default behavior is to disable the coercion in this case.

Sometimes, vector coercion fails with unexpected errors. If OnVectorCoercionFailed is specified, the page is rendered without vector coercion. Otherwise, an exception is thrown. If the output becomes rasterized, you may want to try rendering the page with [HostWebBrowser](hostwebbrowser.md) false.
