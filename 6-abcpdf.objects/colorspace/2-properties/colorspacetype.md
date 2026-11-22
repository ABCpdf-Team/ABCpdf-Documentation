# ColorSpaceType Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `ColorSpaceType` | n/a | No | The type of color space. |

## Notes

The ColorSpaceType enumeration may take the following values:

- None
- DeviceGray
- DeviceRGB
- DeviceCMYK
- CalGray
- CalRGB
- ICCBased
- Lab
- Indexed
- Pattern
- Separation
- DeviceN

Device color spaces are device dependent color spaces. This means that output color will vary depending on the output medium. For example a DeviceRGB value may look different on one monitor than it does on another.

Cal, ICC and Lab color spaces are device independent color spaces. They try to define colors in terms of how they should look rather than how they should be produced. The goal is to allow colors to be reproduced accurately on different devices within the capabilities of the destination device.

The Indexed color space is used for palettized color. Each item in the palette is defined in terms of a base color space such as DeviceRGB. Palettes can hold up to 256 entries. The base color space can be determined using the [BaseColorSpaceType](basecolorspacetype.md) property.

Pattern color spaces are special color spaces used for defining repeating patterns.

Separation and DeviceN color spaces define colors in terms of different base colors. Separations specify one color only. DeviceN color spaces define multiple different colors. For example using a DeviceN color space you could define an image to be printed using a combination of Gold, Silver and Black inks.

The None color space represents an unknown or undefined color space. As such you cannot set this property to be None. Attempting to do so will result in a default DeviceRGB color space.

More details of these color space types can be found in Section 4.5 of the [Adobe PDF Specification](http://partners.adobe.com/).
