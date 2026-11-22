# DefineProperty Method

Defines this object's own property.

## Syntax

```csharp
void DefineProperty(string name, object value)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| name | The name of the property. |
| value | A new value of the property, a JSDataDescriptor, or a JSAccessorDescriptor. |

## Notes

The method defines the property with the specified name.

In addition to the independent values (supported by [JSContext.ConvertToJS](../../jscontext/1-methods/converttojs.md)), the value parameter can be a property descriptor. JSDataDescriptor and JSAccessorDescriptor are classes for specifying data descriptor and accessor descriptor, respectively. If in JSAccessorDescriptor, both the delegate property (e.g. Get) and the JavaScript-value property (e.g. JSGet) are non-null/non-Nothing, the delegate property takes precedence for that accessor. Please refer to JavaScript documentation on how to use property descriptors on Object.defineProperty for details.
