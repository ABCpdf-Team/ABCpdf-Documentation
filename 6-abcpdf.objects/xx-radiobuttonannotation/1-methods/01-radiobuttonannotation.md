# RadioButtonAnnotation Function

Add radio button annotation to the current page of the doc.

## Syntax

*C#*

[`RadioButtonAnnotation`](../index.md)`(Doc doc, XRect rect, string name, bool selected)`

## Params

| Name | Description |
| :---: | --- |
| doc | Doc |
| rect | Location for the annotation |
| name | Name of the annotation |
| selected | Whether the checkbox should be checked or not |

## Notes

Add radio button annotation to the current page of the doc.

Note that the annotation created using this constructor is meaningless until it is connected with a [Field](../../field/index.md). For this reason you are likely to want to use [Doc.Form.AddRadioButtonGroup](../../../5-abcpdf/xform/1-methods/addradiobuttongroup.md) rather than this call.
