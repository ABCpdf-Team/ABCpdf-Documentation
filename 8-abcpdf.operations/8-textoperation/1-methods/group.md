# Group  Function

Group a range of text fragments into a set of lines.

## Syntax

[C#]

```csharp
IList&lt;<a href="../../8-textgroup/default.htm">TextGroup</a>&gt; Group(IList&lt;<a href="../../8-textfragment/default.htm">TextFragment</a>&gt; fragments)
```

## Params

| **Name** | **Description** |
| --- | --- |
| fragments | The fragments to be grouped. |
| Return | Returns a list of groups defining the words. |

## Notes

Group a range of text fragments into a set of lines.

Calling Select will return a list of TextFragments corresponding to the section of text you are interested in. However each TextFragment may only make up a small portion of a word. Calling this function allows you to group connected fragments into continuous sections with a common rectangular area.

Strictly speaking this grouping does not always correspond to lines. For example two fragments on the same line, separated by a large distance, will not be considered contiguous. However for most purposes the two broadly correspond.

## Example

Here we highlight a set of words in a source document by drawing a rectangle around each one.

[C#]

```csharp
string src = "../mypics/Acrobat.pdf";
string dst = "HighlightedText.pdf";
string searchString = "Acrobat";
using var doc = new Doc();
doc.Read(src);
TextOperation op = new TextOperation(doc);
op.PageContents.AddPages();
string text = op.GetText();
int pos = 0;
while (true) {
  pos = text.IndexOf(searchString, pos, StringComparison.CurrentCultureIgnoreCase);
  if (pos < 0)
    break;
  var selection = op.Select(pos, searchString.Length);
  var groups = op.Group(selection);
  foreach (var group in groups) {
    doc.Rect.String = group.Rect.String;
    doc.FrameRect();
  }
  pos += searchString.Length;
}
doc.Save(dst);
```

