# FontProtection Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether fonts should be protected. |

## Notes

This property applies to the [ABCGecko](2-forgecko.md) and [MSHTML](2-formshtml.md) engines.

This property determines whether fonts are protected.

HTML rendering may require that fonts are embedded into the PDF document.

Fonts often contain licensing information. By default ABCpdf will prevent you from embedding fonts which indicate that embedding is not permitted.

You can disable this protection by changing the default for this value.
