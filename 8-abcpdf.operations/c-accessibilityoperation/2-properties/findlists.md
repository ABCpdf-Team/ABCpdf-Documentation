# FindLists Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to detect and insert ordered and unordered list structures. |

## Notes

Whether to detect and insert ordered and unordered list structures.

Much as in HTML, tagged PDF documents support list tags. If this property is set to true, the AccessibilityOperation will attempt to detect list structures and add appropriate tags.

If your lists are complicated and you require complete control over the detection process, you can do this using the techniques detailed in the AccessiblePDF example project which comes with ABCpdf.
