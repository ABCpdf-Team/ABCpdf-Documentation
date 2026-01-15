# Item Function

Gets or sets a particular field referenced by full name.

## Syntax

```csharp
<a href="../../../6-abcpdf.objects/field/default.htm">Field</a> this[string name]
```

## Params

| Name | Description |
| --- | --- |
| name | The fully qualified name of the field. |
| return | The matching field. |

## Notes

Use this method to retrieve a field referenced by fully qualified name.

If no matching field can be found then a null value will be returned.

When setting a value any intermediate fields will be created and the provided field name will be updated to reflect the field path provided.

In C# this property is the indexer for the class.

See the XForm object for details of how fully qualified names are constructed.

