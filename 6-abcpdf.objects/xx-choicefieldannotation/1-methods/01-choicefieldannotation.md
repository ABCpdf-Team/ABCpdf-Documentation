# ChoiceFieldAnnotation Function

Add choicefield annotation to the current page of the doc.

## Syntax

*C#*

[`ChoiceFieldAnnotation`](../index.md)`(Doc doc, XRect rect)`

## Params

| Name | Description |
| :---: | --- |
| doc | Doc |
| rect | Location for the annotation |

## Notes

Add choicefield annotation to the current page of the doc.

Note that the annotation created using this constructor is meaningless until it is connected with a [Field](../../field/index.md). For this reason you are likely to want to use [Doc.Form.AddListBoxField](../../../5-abcpdf/xform/1-methods/addlistboxfield.md) or [Doc.Form.AddComboBoxField](../../../5-abcpdf/xform/1-methods/addcomboboxfield.md) rather than this call.
