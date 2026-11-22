# FindTables Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to detect and insert table structures. |

## Notes

Whether to detect and insert table structures.

Much as in HTML, tagged PDF documents support table tags. However where HTML tables are often used for layout, the concept behind PDF tables is more semantic. The idea is not so much that the contents are positioned in a certain way, more that the contents should be read in a particular way.

If this property is set to true, the AccessibilityOperation will attempt to detect table structures and add appropriate tags.

If your tables are complicated and you require complete control over the table detection process, you can do this using the techniques detailed in the AccessiblePDF example project which comes with ABCpdf.
