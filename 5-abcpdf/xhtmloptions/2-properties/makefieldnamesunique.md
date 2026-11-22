# MakeFieldNamesUnique Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether field names should be changed to make them unique. |

## Notes

This property applies to the [ABCGecko](2-forgecko.md) and [MSHTML](2-formshtml.md) engines.

HTML forms can contain fields with the same name.

If the names of two fields in a PDF are the same, then the fields take the same value.

So if multiple HTML fields with the same name are added to a PDF, these fields will all appear to contain the same content. This is true even if the original HTML fields contained different content.

Setting this property will result in duplicate fields being renamed to allow the content to be different.

The ABCChrome engine does not support this property but it is not a difficult matter to emulate it using code of the following form.

```csharp
HashSet<string> names = new HashSet<string>();
List<Field> fields = new List<Field>();
foreach (Field field in theDoc.Form.Fields) {
  fields.Add(field);
  foreach (Field kid in field.GetKids(1000))
    fields.Add(kid);
}
foreach (Field field in fields) {
  for (int i = 1; names.Contains(field.Name); i++)
    Atom.SetItem(field.Atom, "T", new StringAtom(field.PartialName + "_" + i.ToString()));
  names.Add(field.Name);
}
theDoc.Form.Refresh();
```
