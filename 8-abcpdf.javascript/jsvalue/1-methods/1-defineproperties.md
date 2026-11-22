# DefineProperties Method

Defines a list of this object's own properties.

## Syntax

```csharp
void DefineProperties(IEnumerable<KeyValuePair<string, object>> props)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| props | A list of name-value pairs of new properties. Each value is a new value of the property, a JSDataDescriptor, or a JSAccessorDescriptor. |

## Notes

The method defines the properties with the names specified by KeyValuePair.Key.

Please see [DefineProperty](1-defineproperty.md) for the allowed values.

Reference semantics of objects is supported. When the same object (which is an independent value) is in different parts of this parameter, the same JavaScript value is used. In particular, you can create objects and properties/element values that form circular references.
