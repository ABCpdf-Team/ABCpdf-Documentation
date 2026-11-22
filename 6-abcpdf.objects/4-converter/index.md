# Converter Class

A class for converting Atoms to different types while resolving any references.

```
System.Object
    WebSupergoo.ABCpdf14.Objects.Converter
```

## Methods

| Method | Description |
| --- | --- |
| [Converter](1-methods/01-converter.md) | Create an Atom converter for a particular ObjectSoup. |
| [ToBool](1-methods/02-tobool.md) | Attempts to get a boolean from the specified entry in a DictAtom or ArrayAtom resolving any references as necessary. |
| [ToInt32](1-methods/03-toint32.md) | Attempts to get an int from the specified entry in a DictAtom or ArrayAtom resolving any references as necessary. |
| [ToDouble](1-methods/04-todouble.md) | Attempts to get a double from the specified entry in a DictAtom or ArrayAtom resolving any references as necessary. |
| [ToString](1-methods/05-tostring.md) | Attempts to get a string from the specified entry in a DictAtom or ArrayAtom resolving any references as necessary. |
| [ToName](1-methods/06-toname.md) | Attempts to get a name from the specified entry in a DictAtom or ArrayAtom resolving any references as necessary. |
| [ToIndirectObject](1-methods/07-toindirectobject.md) | Attempts to get an IndirectObject from the specified entry in a DictAtom or ArrayAtom resolving any references as necessary. |
| [ToInt32Array](1-methods/08-toint32array.md) | Attempts to convert an ArrayAtom into an array of ints, resolving any references as necessary. |
| [ToDoubleArray](1-methods/09-todoublearray.md) | Attempts to convert an ArrayAtom into an array of doubles, resolving any references as necessary. |
| [ToStringArray](1-methods/10-tostringarray.md) | Attempts to convert an ArrayAtom into an array of strings, resolving any references as necessary. |
| [ToNameArray](1-methods/11-tonamearray.md) | Attempts to convert an ArrayAtom into an array of names, resolving any references as necessary. |
| [ToInt32Dictionary](1-methods/12-toint32dictionary.md) | Attempts to convert a DictAtom into a Dictionary of ints, resolving any references as necessary. |
| [ToDoubleDictionary](1-methods/13-todoubledictionary.md) | Attempts to convert a DictAtom into a Dictionary of doubles, resolving any references as necessary. |
| [ToStringDictionary](1-methods/14-tostringdictionary.md) | Attempts to convert a DictAtom into a Dictionary of strings, resolving any references as necessary. |
| [ToNameDictionary](1-methods/15-tonamedictionary.md) | Attempts to convert a DictAtom into a Dictionary of names, resolving any references as necessary. |

## Properties

| Property | Description |
| --- | --- |
| [Soup](2-properties/01-soup.md) | The ObjectSoup used by this converter. |
