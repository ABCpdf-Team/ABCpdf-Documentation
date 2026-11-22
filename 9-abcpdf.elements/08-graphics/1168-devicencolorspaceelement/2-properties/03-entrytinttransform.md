# EntryTintTransform Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FunctionElement`](../../../07-syntax/1101-functionelement/index.md) | null | No | This property represents the tint transform function. |

## Notes

This property represents the tint transform function.

The function is used to map color values in the DeviceN color space into color values in the [EntryAlternateColorSpace](02-entryalternatecolorspace.md) color space.

The function should be called with the tint value and should return a number of components in the alternate color space.

For definitive details see:.

- [The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 160.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=168)

The tint transform function accepts one input per DeviceN component and produces one output per component of the alternate color space. It defines the color that should appear in the alternate space when all DeviceN components are at their given levels.

The function is evaluated when rendering on a device that cannot produce the named colorants directly. It should produce a perceptually reasonable approximation of the intended ink combination.
