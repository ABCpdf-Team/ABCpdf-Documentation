# Log Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "" | Yes | The log for the last render. |

## Notes

During rendering inconsistencies may be detected in the PDF or in the environment.

For example if a PDF contains a corrupt image then it may not be possible to display it. If a PDF contains a reference to a font which is not on the current system then a font substitution may be required.

ABCpdf will do its best to complete the render even if errors or inconsistencies are found. However it will log these type of issues and make the log available via this property. This can be useful for debugging purposes.
