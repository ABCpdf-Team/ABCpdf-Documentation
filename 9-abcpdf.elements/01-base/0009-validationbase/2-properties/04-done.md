# Done Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `HashSet<int>` | null | Yes | Gets the set of IDs which have been processed. |

## Notes

Gets the set of IDs which have been processed.

During validation many IndirectObjects will be encountered.

Each time this happens, the ID value is added to this property.

The result is a set of IDs which allows you to determine the Objects that were validated.

If some are not validated this will be generally because they were not referenced anywhere.

However it may also be that they were referenced but that the references were not part of the PDF specification and thus could not be followed.
