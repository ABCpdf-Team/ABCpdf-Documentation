# Warnings Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | Yes | The validation warnings. |

## Notes

This property holds the validation warnings.

Validation warnings indicate unexpected characteristics that neither PDF/A nor PDF regards as problems but ABCpdf regards as suspect.

For example, if the PDF header indicates PDF Version 1.4 but then a 1.5 feature is referenced in the PDF, a warning will be emitted.

Warnings are outside the PDF/A spec and so a warning does not indicate any problem with PDF/A compliance.

For example, the following warnings might be emitted.

```error
Type-2 CIDFont descriptor 198 uses PDF 1.5 FontFamily.
Layout attribute object 187 uses PDF 1.5 BackgroundColor.
Layout attribute object 187 uses PDF 1.5 BorderColor.
Layout attribute object 187 uses PDF 1.5 BorderStyle.
Layout attribute object 187's BorderStyle is PDF 1.5 border style.
```

## Example

See the [Read](../1-methods/read.md) method.
