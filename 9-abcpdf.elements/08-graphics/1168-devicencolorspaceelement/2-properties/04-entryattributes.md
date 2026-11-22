# EntryAttributes Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DeviceNColorSpaceAttributesElement`](../../1169-devicencolorspaceattributeselement/index.md) | null | No | This property represents addition attributes specific to this color space. |

## Notes

This property represents addition attributes specific to this color space.

For definitive details see:.

- [The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 160.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=168)

The Attributes dictionary carries supplementary metadata about the DeviceN colorants: a Colorants dictionary mapping each name to its Separation space, a Process dictionary identifying process components, and a MixingHints dictionary with printing guidance.

These attributes do not affect the colorimetric definition of the space but assist rendering and proofing software in producing accurate simulations of the ink combination.
