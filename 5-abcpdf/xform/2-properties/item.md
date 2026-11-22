# Item Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`Field`](../../../6-abcpdf.objects/field/index.md)` this[string name]` | n/a | No | Gets or sets a particular field referenced by full name. |

## Notes

Use this property to get or set a field referenced by its fully qualified name.

If no matching field can be found then a null value will be returned.

When setting a value any intermediate fields will be created and the provided field name will be updated to reflect the field path provided.

In C# this property is the indexer for the class.

See the [XForm](../index.md) object for details of how fully qualified names are constructed.
