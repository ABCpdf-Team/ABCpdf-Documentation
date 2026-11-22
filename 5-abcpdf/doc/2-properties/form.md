# Form Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`XForm`](../../xform/index.md) | n/a | Yes | The document form and fields. |

## Notes

This property allows you to examine and manipulate the document Form and Fields.

Fields are generally obtained using a fully qualified name. A full name describes a path down through the field hierarchy - using periods as delimiters - to a specific field object.

Once a field has been obtained you can query or change its values. If you wish to convert the fields into a permanent part of the document you can use the [Field.Stamp](../../../6-abcpdf.objects/field/1-methods/stamp.md) method to permanently emboss them.

See the XForm object for full details.

This property is read only, but the object it returns can be modified.

## Example

Also see example code in: [ABCpdf eForm Fields Example](../../../4-examples/15-eform1.md), [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md), [ABCpdf eForm Stamp Example](../../../4-examples/15-eform3.md).
