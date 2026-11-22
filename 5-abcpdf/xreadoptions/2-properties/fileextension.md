# FileExtension Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Gets or sets the file extension for data sources that do not have file names. |

## Notes

This property is used by modules that can take files with different file extensions when (and only when) the specification of the source does not provide a file extension, such as a Stream or an array of bytes.

For the [Default](1-readmodule.md) modules, it is optional, but the modules may behave differently when it is specified. For the [XpsAny](1-readmodule.md) and the [OpenOffice](1-readmodule.md) modules, it is mandatory.
