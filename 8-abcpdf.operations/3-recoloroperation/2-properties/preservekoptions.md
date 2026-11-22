# PreserveKOptions Property

| Type | Default | Read Write | Description |
| --- | --- | --- | --- |
| `BlackPreservation` | Intent | Yes | Determines how color transforms preserve black when recoloring to CMYK. |

## Notes

Tell the color management system how to preserve black (K) when converting color to CMYK.

Normal color transforms first convert to device independent XYZ using the source profile, then from XYZ to the destination space using the destination profile.

Since CMYK is an overdetermined colorspace, an XYZ intermediate value can be converted into a number of different and equivalent CMYK values.

The XRendering.BlackPreservation enumeration may take the following values:

- Off - Do not attempt to preserve black when transforming.
- Intent - Use special rendering intents to preserve black - must be supported by the ICC profile.
- Plane - for CMYK to CMYK transforms only; run CMY through the profile, do not change K.

See also the [XRendering.PreserveKOptions](../../../5-abcpdf/xrendering/2-properties/preservekoptions.md) property.
