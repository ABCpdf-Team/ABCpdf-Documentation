# Convert Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`Converter`](../../4-converter/index.md) | n/a | Yes | A Converter for the document. |

## Notes

A [Converter](../../4-converter/index.md) for the document.

The Converter can be used for the resolution and extraction of atomic data held within the document.

Because the Converter has direct access to the raw data it can be significantly faster than resolving Atoms directly. This is especially the case for accessing collections such as arrays or dictionaries of data.

It is very simple to use. For example to get all the character widths from a font you might use code of the following form.

```csharp
Atom atom = Atom.GetItem(font.Atom, "Widths");
double[] widths = doc.ObjectSoup.Convert.ToDoubleArray(atom, 1000);
```
