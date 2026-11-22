# TextDirection Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `XTextStyle.DirectionType` | DirectionType.Default | No | The default text direction |

## Notes

This property specifies the default primary text direction. For the details of each value, please refer to [XTextStyle.Direction](../../../5-abcpdf/xtextstyle/2-properties/direction.md).

The value of this property is not saved to the PDF file and it exists purely to determine the way that appearances are generated for annotations containing text.

If you are using Hebrew or Arabic you may wish to set this value to left-to-right to provide support to bi-directional text and contextual ligatures.

In general you will not want to set the primary direction to right-to-left as this is something that Acrobat does not support and may result in field changes when, in Acrobat, you click into a field to edit the text.
