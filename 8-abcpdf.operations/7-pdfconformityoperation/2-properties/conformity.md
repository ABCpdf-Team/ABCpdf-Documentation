# Conformity Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `PdfConformity` | None | No | The PDF conformity. |

## Notes

This property specifies the conformity operations to perform. It provides more precise specifications than [Conformance](conformance.md).

The PdfConformity type is a flags enumeration so different values can be combined together using bitwise operations.

The PdfConformity enumeration may take the following values:

- None - No operation.
- NoJavaScriptAction - Removes JavaScript actions. (included in PDF/A conformance.)
- NoDocMetadataWithUnknownNamespace - Removes document metadata with unknown XML namespaces. (included in PDF/A conformance.)
