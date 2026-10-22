# DisableVectorCoercion Property

## Notes

This property applies to the MSHTML engine only.

The HtmlRenderConditions enumeration can take a combination of the following values:

This property determines when to disable vector-output coercion if the coercion is otherwise activated as specified by CoerceVector. There is a size limit to the coerced vector output. If the HTML page size is bigger than the limit, the vector output is clipped so the default behavior is to disable the coercion in this case.

Sometimes, vector coercion fails with unexpected errors. If OnVectorCoercionFailed is specified, the page is rendered without vector coercion. Otherwise, an exception is thrown. If the output becomes rasterized, you may want to try rendering the page with HostWebBrowser false.

## Example

None.

