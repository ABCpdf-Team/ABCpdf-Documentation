# AutodetectFactory Function

Autodetect Factory.

## Syntax

*C#*

`static `[`Element`](../../1086-element/index.md)` AutodetectFactory(Atom atom, IndirectObject host, object reference)`

## Params

| Name | Description |
| :---: | --- |
| atom | The atom from which the [Element](../../1086-element/index.md) should be created. |
| host | The host object. This can be any IndirectObject in the document but it is useful to specify one with which the atom is closely associated. |
| reference | A reference which may be used to pass context. |
| return | An [Element](../../1086-element/index.md) or [Element](../../1086-element/index.md) subclass. |

## Notes

Autodetect Factory.

This is used for the creation of specific types of [Element](../../1086-element/index.md) based on the content of the Atom.

Many Atoms have specific Type or Subtype fields which are used to indicate the precise variant of [Element](../../1086-element/index.md).

If these are present, which in many cases they are, then a sensible choice can be made as to the type of [Element](../../1086-element/index.md) to create.

Even when these are not present sometimes it is possible to detect the type from specific combinations of entries found in the Atom.

However not all specializations can be auto-detected as not all require this type of identification element.

If this is the case then the return value will be a generic [Element](../../1086-element/index.md).
