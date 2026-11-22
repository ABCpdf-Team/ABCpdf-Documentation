# TrimBox Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`XRect`](../../../5-abcpdf/xrect/index.md) | n/a | No | The TrimBox for the page |

## Notes

The TrimBox defines the intended boundaries of the page after trimming.

These boundaries are always defined directly on the Page object. If no property has been defined then this property will be null and the effective value is assumed to be that of the CropBox.

Note that, as with all objects in this namespace, this property is measured in points in the native PDF coordinate space. It is unaffected by the [Doc.Units](../../../5-abcpdf/doc/2-properties/units.md) or [Doc.TopDown](../../../5-abcpdf/doc/2-properties/topdown.md) properties.
