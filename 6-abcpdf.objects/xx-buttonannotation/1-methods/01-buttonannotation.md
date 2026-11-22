# ButtonAnnotation Function

Add button annotation to the current page of the doc.

## Syntax

*C#*

[`ButtonAnnotation`](../index.md)`(Doc doc, XRect rect, string caption)`

## Params

| Name | Description |
| :---: | --- |
| doc | Doc |
| rect | Location for the annotation |
| caption | Caption for button |

## Notes

Add button annotation to the current page of the doc.

Note that the annotation created using this constructor is meaningless until it is connected with a [Field](../../field/index.md). For this reason you are likely to want to use [Doc.Form.AddButton](../../../5-abcpdf/xform/1-methods/addbutton.md) rather than this call.
