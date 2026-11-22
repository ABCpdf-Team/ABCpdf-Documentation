# ToString Function

The string representation of the StringAtom as it would appear in a PDF.

## Syntax

```csharp
string ToString(string format)
```

## Params

| Name | Description |
| :---: | --- |
| format | The format which should be used for the conversion. |
| return | The string representation of the object. |

## Notes

This function derives the content of the object as it will be inserted into the final PDF document.

There are many ways in which a string may be represented. The format string allows more control over how this is done.

The following options may be used in combination.

- l - literal format with unusual characters escaped in octal
- x - hexadecimal format with all characters represented in hex
- lx - best choice literal or hexadecimal format depending on the content of the string
- b1 - allow the string to be broken over multiple lines
- b0 - do not allow the string to be broken over multiple lines
- r1 - allow random elements when applying a crypt filter
- r0 - do not allow random elements when applying a crypt filter

If format options are not specified then ABCpdf will select a sensible set depending on context.
