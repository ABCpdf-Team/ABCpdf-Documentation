# TextFieldAnnotation Function

Add textfield annotation to the current page of the doc.

## Syntax

*C#*

[`TextFieldAnnotation`](../index.md)`(Doc doc, XRect rect)`

## Params

| Name | Description |
| :---: | --- |
| doc | Doc |
| rect | Location for the annotation |

## Notes

Add textfield annotation to the current page of the doc.

Note that the annotation created using this constructor is meaningless until it is connected with a [Field](../../field/index.md). For this reason you are likely to want to use [Doc.Form.AddTextField](../../../5-abcpdf/xform/1-methods/addtextfield.md) rather than this call.
