# DocNumber Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The one-based document number used by ImportAny. |

## Notes

This property can be used to select which document will be imported when calling [ImportAny](../1-methods/importany.md). In most cases only a single document is available in any file and this property is ignored. However in some cases, such as Microsoft Excel, a single workbook contains multiple worksheets. This property will select which Excel worksheet will be imported.

When it is set to zero or a negative value, the entire Excel workbook will be imported. This is the default case. When it is set to any positive value the corresponding worksheet will be imported. Indexing is one-based so set it to one to print the first worksheet and so on. It is up to you to make sure that you set it to a valid value, less than or equal to the total number of worksheets in the workbook.

For applications other than Microsoft Excel this property is currently ignored.
