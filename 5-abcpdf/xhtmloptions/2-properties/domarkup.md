# DoMarkup Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether HTML pages are marked up before conversion to PDF. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

This property determines whether HTML pages are marked up before conversion to PDF.

Markup allows common HTML problems to be fixed automatically. It is also necessary for enabling page break CSS tags, for adding fields and for tagged content to be identified.

However if you are not using these features then skipping markup can save time for some documents.
