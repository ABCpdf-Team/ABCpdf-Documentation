# FromString Function

Create an appropriate type of Atom from a raw PDF string representation.

## Syntax

```csharp
static Atom FromString(string value)
```

## Params

| Name | Description |
| :---: | --- |
| value | The string representing the value of the object. |
| return | The resulting Atom. |

## Notes

The text you pass this function must be in native PDF format. This means that unusual characters in text strings must be appropriately escaped.

For full details of the way that PDF objects are represented you should see the Adobe PDF Specification.
