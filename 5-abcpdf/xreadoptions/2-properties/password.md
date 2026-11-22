# Password Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Gets or sets the password needed to read the source. |

## Notes

Specify with this property the password for accessing the source, for example, when using [Doc.Read](../../doc/1-methods/read.md) on an encrypted PDF document.

It is also used for importing MS Word or MS Excel documents when using Microsoft Office via the XpsAny and MSOffice ReadModule.

Note that for other Office applications, eg. MS PowerPoint, ABCpdf cannot import password protected documents.

Currently, certain features such as form fields conversion may be disabled if the document is password protected, even if the correct password is supplied.
