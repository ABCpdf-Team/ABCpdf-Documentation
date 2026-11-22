# StreamElement Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamElement`](../../../07-syntax/1028-streamelement/index.md) | null | Yes | The [StreamElement](../../../07-syntax/1028-streamelement/index.md) associated with this class. |

## Notes

The [StreamElement](../../../07-syntax/1028-streamelement/index.md) associated with this class.

The stream holds the Coons patch mesh data. Each patch record contains a flag field, 12 control point coordinates, and 4 corner color values, packed according to the BitsPerFlag, BitsPerCoordinate, and BitsPerComponent values.
