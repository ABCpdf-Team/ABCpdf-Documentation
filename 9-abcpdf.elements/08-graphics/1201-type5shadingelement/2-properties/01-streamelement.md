# StreamElement Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamElement`](../../../07-syntax/1028-streamelement/index.md) | null | Yes | The [StreamElement](../../../07-syntax/1028-streamelement/index.md) associated with this class. |

## Notes

The [StreamElement](../../../07-syntax/1028-streamelement/index.md) associated with this class.

The stream holds the lattice mesh data as rows of vertex records. Each record contains coordinate values and color component values packed according to BitsPerCoordinate and BitsPerComponent, with no flag field since the lattice topology is implicit.
