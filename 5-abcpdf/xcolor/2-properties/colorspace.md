# ColorSpace Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `ColorOperatorType` | ColorOperatorType.DeviceRGB | No | The color space for the color. |

## Notes

Allows you to get or set the current color space for the color.

Grayscale, RGB and CMYK colors are defined purely in terms of the values of the XColor object. However more complex colors need to be defined in the context of a separate color space.

The ColorOperatorType enumeration may take the following values:

- None
- DeviceGray (i.e. grayscale)
- DeviceRGB (i.e. RGB)
- DeviceCMYK (i.e. CMYK)
- ColorSpace (i.e. a generic set of color components)

The actual color is defined in terms of the [Components](components.md) of the color. For grayscale, RGB and CMYK there are one, three and four of these respectively. These components are most commonly accessed using properties such as [Gray](gray.md), [Red](red.md), [Green](green.md) or [Blue](blue.md) which express the values in terms of integers (typically 0 to 255). However it is ultimately the [Components](components.md) ranging from 0.0 to 1.0 which are provided as parameters to the PDF color operator.

If you change the value of this property between DeviceGray, DeviceRGB and DeviceCMYK, the current color will automatically be converted to the indicated color space. However different color spaces have fundamentally different properties and color conversions can only ever be approximate. Changing to None or ColorSpace will not change the number or values of the [Components](components.md).

The integer values for the enumeration values DeviceGray, DeviceRGB and DeviceCMYK are one, three and four respectively, so that they match up with the number of color components in each of these color spaces.

The ColorSpace enumeration value indicates a generic color with a generic set of components. This type of color only makes sense within the context of a specified color space such as a spot color space. In this situation the parameters that are provided to the PDF color operator are accessed directly using the [Components](components.md) of the color. In addition, for pattern color spaces, there may also be a [Name](name.md) associated with the color.

> **Why is my ColorSpace an integer?**
>
> In older versions of ABCpdf the ColorSpace property was an integer. So you might find code of this form.
>
> ```csharp
> theColor.ColorSpace = 3;
> ```
>
> In Version 10 the ColorSpace property was changed to a true enumeration. This is a safer way of coding as it allows the compiler to ensure that the values you are using are valid. Your new code should look like this.
>
> ```csharp
> theColor.ColorSpace = ColorOperatorType.DeviceRGB;
> ```
>
> The old values of the integers match up with the new enumeration values. So if you find code of this form:
>
> ```csharp
> theColor.ColorSpace = anInteger;
> ```
>
> You can just cast it to the correct type.
>
> ```csharp
> theColor.ColorSpace = (ColorOperatorType)anInteger;
> ```
>
> Or similarly:
>
> ```csharp
> int n = theColor.ColorSpace;
> ```
>
> You can again cast it to the correct type.
>
> ```csharp
> int n = (int)theColor.ColorSpace;
> ```

## Example

Also see example code in: [XColor Components Property](components.md).
