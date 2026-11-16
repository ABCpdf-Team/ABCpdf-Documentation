# FromContentStream Function

Create an array of Atoms from a byte array containing a sequence of PDF objects

## Syntax

[C#]

```csharp
static <a href="../default.htm">ArrayAtom</a> FromContentStream(string value)static <a href="../default.htm">ArrayAtom</a> FromContentStream(byte[] value)static ArrayAtom FromContentStream(byte[] value, out IList&lt;int&gt; offsets)
```

## Params

| **Name** | **Description** |
| --- | --- |
| value | A string or a chunk of data holding the sequence of atoms. |
| offsets | The byte offsets in the data for the start each of atom in the returned array. |
| return | An ArrayAtom holding the atoms in the content stream. |

## Notes

Create an array of Atoms from a byte array containing a sequence of PDF objects.

This method is useful for deconstructing PDF content streams for analysis and modification. To convert back into a content stream you can use the [Atom.GetData](1-atom/1-methods/getdata.md) function.

The returned offsets relate to the byte offsets for the start of each atom in the array that is returned.

## Example

This example shows how to use the FromContentStream function to parse and display a PDF content stream.

[C#]

```csharp
var sb = new StringBuilder();
using (var doc = new Doc()) {
  doc.Read("../Rez/spaceshuttle.pdf");
  var page = doc.ObjectSoup[doc.Page] as Page;
  var array = ArrayAtom.FromContentStream(page.GetContentData());
  int indent = 0;
  var indentPlus = new HashSet<string>([ "q", "BT" ]);
  var indentMinus = new HashSet<string>(["Q", "ET" ]);
  var items = OpAtom.Find(array);
  int index = 0;
  foreach (var pair in items) {
    string op = ((OpAtom)array[pair.Item2]).Text;
    // add indent to code
    if (indentMinus.Contains(op))
      indent--;
    for (int i = 0; i < indent; i++)
      sb.Append(" ");
    // write out the operators
    for (int i = index; i <= pair.Item2; i++) {
      if (i != index)
        sb.Append(" ");
      var item = array[i];
      // we write arrays out individually so that
      // we can override default cr lf behavior
      var itemArray = item as ArrayAtom;
      if (itemArray != null) {
        int n = itemArray.Count;
        sb.Append("[");
        for (int j = 0; j < n; j++) {
          sb.Append(itemArray[j].ToString());
          if (j != n - 1)
            sb.Append(" ");
        }
        sb.Append("]");
      }
      else {
        sb.Append(item.ToString());
      }
    }
    sb.AppendLine();
    if (indentPlus.Contains(op))
      indent++;
    index = pair.Item2 + 1;
  }
  // write out any atoms that are left over
  for (int i = index; i < array.Count; i++) {
    sb.Append(" ");
    sb.Append(array[i].ToString());
  }
}
using (var doc = new Doc()) {
  doc.Font = doc.AddFont("Courier");
  doc.Rect.Inset(20, 20);
  doc.AddText(sb.ToString());
  doc.Save("PageContents.pdf");
}
```

![](../../../images/pdf/pagecontents.pdf.png)
PageContents.pdf

