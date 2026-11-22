# RegenerateUnicode Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to attempt to regenerate missing Unicode tables from embedded fonts. |

⚠ `may throw Exception()`

## Notes

Whether to attempt to regenerate missing Unicode tables from embedded fonts.

For details of the type of fix that is attempted on non-conforming fonts please see the [FontObject.RegenerateToUnicode](../../../6-abcpdf.objects/fontobject/1-methods/regeneratetounicode.md) method.

This property must not be changed after the [AddPages](../1-methods/addpages.md) method has been called. To do so will result in an exception being raised.
