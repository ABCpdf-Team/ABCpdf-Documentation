# LoadGlobals Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to create certain predefined global variables and execute some JavaScript code defined in the document. |

## Notes

There are seldom used global variables provided by the PDF JavaScript environment, and PDF documents may contain JavaScript code for initialization. This property specifies whether to create those global variables and to run the document-specific initialization code.
