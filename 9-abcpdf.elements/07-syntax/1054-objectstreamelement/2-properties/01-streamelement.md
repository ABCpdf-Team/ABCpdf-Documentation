# StreamElement Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamElement`](../../1028-streamelement/index.md) | null | Yes | The [StreamElement](../../1028-streamelement/index.md) associated with this class. |

## Notes

The [StreamElement](../../1028-streamelement/index.md) associated with this class.

The stream body contains the compressed objects preceded by a header section. The header lists the object numbers and their byte offsets within the body, allowing random access to any stored object without scanning the entire stream.
