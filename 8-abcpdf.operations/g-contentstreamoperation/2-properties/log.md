# Log Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `StringBuilder` | null | No | A log of any errors or inconsistencies found during processing |

## Notes

A log of any errors or inconsistencies found during processing.

The StringBuilder will be appended to every time an error is found. If this property is null, a StringBuilder will be created at the point the first error is found.
