# Page Property

## Notes

This property reflects the page on which this field is located.

This property is only valid if the fields has one single visible appearance on the page. If you are unsure whether your field will always map to one visible appearance it is better to call GetAnnotations and work with the Annotation.Page of each of the items in the array. If there is only one item in the array then this indicates that the field has one single visible appearance on the page.

The most common case in which a field does not have a single visible appearance is in the case of radio buttons. In this case the field describes the radio button group and the children of the field are the visible buttons. Be aware that it is possible to spread radio buttons across more than one page.

This value may be null if the field does not have a visible appearance.

If this field does not have one single visible appearance on the page, attempting to assign a value to this property will result in an ArgumentOutOfRangeException being thrown.

## Example

None.

