# Compatibility Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `CompatibilityType` | CompatibilityType.Traditional | No | The rendering behavior that should be simulated. |

## Notes

The rendering behavior that should be simulated.

Different PDF viewers render slightly differently in different contexts. For example inconsistencies in image mask settings may cause them to be used or discarded. The behavior here is not defined in the PDF specification and varies between viewers.

The CompatibilityType enumeration may take the following values:

- Traditional - The default behavior used by ABCpdf prior to the introduction of the CompatibilityType.
- Chrome141 - Chrome 141 behavior.
- Acrobat2025 - Acrobat 2025 behavior.
