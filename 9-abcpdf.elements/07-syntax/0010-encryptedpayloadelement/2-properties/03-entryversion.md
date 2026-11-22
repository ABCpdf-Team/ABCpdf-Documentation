# EntryVersion Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Version" entry of the encrypted payload dictionary object. |

## Notes

Represents the "Version" entry of the encrypted payload dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 28, page 94.](https://www.iso.org/standard/63534.html)

The Version entry records the PDF version of the encrypted payload document. A conforming reader may use this to determine whether it supports the version before attempting decryption.
