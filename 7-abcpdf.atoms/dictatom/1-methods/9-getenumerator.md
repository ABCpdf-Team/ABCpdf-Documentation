# GetEnumerator Function

Get an enumerator for the dictionary.

## Syntax

```csharp
DictAtom.Enumerator GetEnumerator()
```

## Params

| Name | Description |
| :---: | --- |
| return | The enumerator for the dictionary. |

## Notes

Get an KeyValuePair\<string, Atom> enumerator for the dictionary.

DictAtom.Enumerator is a value type that implements IEnumerator\<KeyValuePair\<string, [Atom](../../1-atom/index.md)>> and IDictionaryEnumerator.
