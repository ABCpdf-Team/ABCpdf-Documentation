# RichConversion Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether rich conversion should be performed. |

## Notes

This property determines whether rich conversion is performed.

Set to true to convert document text fields, popup comments, file links and bookmarks to their PDF equivalent.

While this produces a better output for documents containing these features, it can impact the speed of conversion for some large documents, in particular for those containing large table-of-contents. If you do not need these features you may prefer to set it to false.

At present this setting is only relevant for the conversion of DOC and DOCX files using MS Word.
