# Subtype Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | The subtype of the embedded file |

## Notes

The subtype of the embedded file.

This property is represented via a [NameAtom](../../../7-abcpdf.atoms/nameatom/index.md) and hence it cannot take an empty string. As such, setting this property to an empty string will set it to null.
