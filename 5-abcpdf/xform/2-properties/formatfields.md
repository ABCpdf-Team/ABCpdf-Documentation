# FormatFields Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether values should be formatted before insertion into fields. |

## Notes

This determines if values should be formatted before insertion.

Acrobat uses JavaScript to implement number and date formats. Although this is something which is part of Acrobat rather than of the PDF specification you can ask ABCpdf to adhere to these formatting scripts.

When this property is set to true ABCpdf will detect these standard scripts and generate appearances conforming with them. See the [Field.Format](../../../6-abcpdf.objects/field/2-properties/format.md) property for details.

It is unlikely you will want to change the value of this property.
