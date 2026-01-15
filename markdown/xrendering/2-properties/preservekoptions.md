# PreserveKOptions Property

&nbsp;

## Notes

Tell the color management system how to preserve black (K) when rendering to CMYK.

Normal color transforms first convert to device independent XYZ using the source profile, then from XYZ to the destination space using the destination profile.

Since CMYK is an overdetermined colorspace, an XYZ intermediate value can be converted into a number of different and equivalent CMYK values.

The XRendering.BlackPreservation enumeration may take the following values:

Off - Do not attempt to preserve black when rendering to CMYK. Intent - Use special rendering intents to preserve black - must be supported by the ICC profile. Plane - for CMYK to CMYK transforms only; run CMY through the profile, do not change K.

See also the  RecolorOperation.PreserveKOptions property.

