# AutoTag Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to automatically tag the document for accessibility. |

## Notes

Whether to automatically tag the document for accessibility.

If this property is set to true then you can set the [Doc.TextStyle.AutoTag](../../xtextstyle/2-properties/autotag.md) property to true and methods like [Doc.AddText](../../doc/1-methods/addtext.md) and [Doc.AddTextStyled](../../doc/1-methods/addtextstyled.md) will then produce tagged output.

You can achieve more control over the tagging process using the methods on the [Doc.Tag](../../doc/2-properties/tag.md) property.
