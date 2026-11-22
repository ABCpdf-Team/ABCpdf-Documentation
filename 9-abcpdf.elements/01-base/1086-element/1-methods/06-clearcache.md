# ClearCache Function

Clears any cached [Element](../index.md) items.

## Syntax

```csharp
virtual void ClearCache()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Clears any cached [Element](../index.md) items.

[Elements](../index.md) in properties are cached so that the [Element](../index.md) you assign to a property is the same as the one you retrieve when you later get that property.

However it is possible that sometimes this behavior is not what you want.

For example suppose you assign a [DeviceColorSpaceElement](../../../08-graphics/0021-devicecolorspaceelement/index.md) to a property and then later change the underlying [Atom](../2-properties/03-atom.md) so that it is really a CalRGBColorSpace.

In this situation the retrieved [ColorSpaceElement](../../../08-graphics/0020-colorspaceelement/index.md) will continue to be interpreted as a [DeviceColorSpaceElement](../../../08-graphics/0021-devicecolorspaceelement/index.md) and an invalid one at that.

What you really want to do here is to clear the cached [Element](../index.md) thus allowing the property to be regenerated as a CalRGBColorSpace.

This function clears the cached [Elements](../index.md) to allow this to happen.
