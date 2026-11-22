# AutoFix Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to automatically fix corrupt images. |

## Notes

Some corrupt documents can contain corrupt images. The most common type of corruption is the truncation of the image data. However most of the time it is better to use the image data that exists rather than throw an error.

If the AutoFix property is set, then when the image is decompressed it will be checked. If it is found that the data has been truncated then extra blank data will be added onto the end.

Typically such an image will appear containing black content at the bottom. Depending on the amount of truncation in the original data there will be varying amounts of blank space.
