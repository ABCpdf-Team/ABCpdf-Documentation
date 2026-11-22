# FindHeaders Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to detect and remove page headers. |

## Notes

Whether to detect and remove page headers.

Most accessibility standards regard repeated text as chrome rather than content. For this reason they often mandate that headers and footers are removed from the semantic structure of the document.

If this property is set to true, the AccessibilityOperation will attempt to detect repeated headers and mark them as artifacts.

If your documents are complicated and you require complete control over the detection process, you can do this using the techniques detailed in the AccessiblePDF example project which comes with ABCpdf.
