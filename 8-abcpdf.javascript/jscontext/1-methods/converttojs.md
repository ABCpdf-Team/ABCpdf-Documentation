# ConvertToJS Method

Gets a JavaScript value for the parameter value.

## Syntax

```csharp
JSValue ConvertToJS(bool v)
JSValue ConvertToJS(double v)
JSValue ConvertToJS(int v)
JSValue ConvertToJS(long v)
JSValue ConvertToJS(string v)
JSValue ConvertToJS(Func<JSCallInfo, object> v)
JSValue ConvertToJS(object v)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| v | The value for conversion. |
| return | The converted JavaScript value. |

## Notes

The method creates a value in the JavaScript engine. The parameter can be any of the following independent values:

- **JSConstant.Undefined** – the undefined value.
- **JSConstant.Null** – the null value.
- A **JSValue** – itself; no conversion.
- A **Boolean** – a primitive Boolean.
- A **Char** – a primitive string consisting of one character.
- A **SByte**, **Byte**, **Int16**, **UInt16**, **Int32**, **UInt32**, **Int64**, **UInt64**, **Single**, **Double** or **Decimal** – a primitive number.
- A **String** – a primitive string.
- A **Func\<JSCallInfo, object>** – a function.
- **IEnumerable\<KeyValuePair\<string, object>>** – an object created using Object.defineProperty. (Please see [JSValue.DefineProperty](../../jsvalue/1-methods/1-defineproperty.md).) In addition to the independent values listed here, KeyValuePair\<string, object>.Value may be JSDataDescriptor or JSAccessorDescriptor.
- **IEnumerable\<T>** – an array with the values after this conversion as the element values. If the parameter is an ICollection\<T> or IReadOnlyCollection\<T>, the array is create with the given length.
- T can be any of the following types:
  - SByte – the array is a signed-8bit typed array.
  - Byte – the array is a unsigned-8bit typed array.
  - Int16 – the array is a signed-16bit typed array.
  - UInt16 – the array is a unsigned-16bit typed array.
  - Int32 – the array is a signed-32bit typed array.
  - UInt32 – the array is a unsigned-32bit typed array.
  - Int64 – the array is a signed-64bit typed array.
  - UInt64 – the array is a unsigned-64bit typed array.
  - Single, Double, or Decimal – the array is a 64bit-floating-point typed array.
  - Object (other than the above types) – items are values after this conversion.

Reference semantics of objects is supported. When the same object (which is an independent value) is in different parts of this parameter, the same JavaScript value is used. In particular, you can create objects and properties/element values that form circular references.
