# GenerateAppearances Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether field appearances should be pre-generated. |

## Notes

This property determines if field appearances are pre-generated or not.

Many PDF viewing applications are unable to generate field appearances dynamically. This means that they are unable to display fields given the field and the value of that field. Instead they require the appearance of the field to be pre-generated.

A new appearance will only be generated when it is required. Typically this is when the value of a field changes.

It is unlikely you will want to change the value of this property.
