# MSOfficeParameters Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `Dictionary<string, string>` | n/a | No | MS Office PDF conversion control parameters. |

## Notes

This property is used by the MS Office import module. It is used to pass custom parameters to Microsoft Office for precise control over the PDF conversion process.

The parameters are a set of named strings. You can find details of the options you can use on the MS [Word](http://msdn.microsoft.com/en-us/library/microsoft.office.interop.word._document.exportasfixedformat.aspx), [Excel](http://msdn.microsoft.com/en-us/library/microsoft.office.interop.excel._workbook.exportasfixedformat.aspx) and [Publisher](https://docs.microsoft.com/en-us/office/vba/api/Publisher.Document.ExportAsFixedFormat) web pages.
