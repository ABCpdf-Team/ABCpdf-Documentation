# Find Function

Finds specified types of OpAtom entries in an array

## Syntax

*C#*

`static IList<Tuple<string, int>> Find(`[`ArrayAtom`](../../arrayatom/index.md)` array)`  
`static IList<Tuple<string, int>> Find(`[`ArrayAtom`](../../arrayatom/index.md)` array, string[] names)`

## Params

| Name | Description |
| :---: | --- |
| array | The ArrayAtom to be searched. |
| names | The types of OpAtoms that should be returned. |
| return | The positions and text of the items which were found. |

## Notes

Finds specified types of OpAtom entries in an array.

If you specify no names then the positions and text of all the OpAtoms in the ArrayAtom will be returned. If you are only interested in a particular set of operators then you can specify an array of those types to restrict the number of items returned.

In addition to the standard names there is also the "Meta:InlineImage" name which is a metatag to allow you to access inline image streams. By explicitly setting this - it must be explicitly provided - you can pick up the location of any inline image dictionaries.

## Example

This example shows how to use the [Array.FromContentStream](../../arrayatom/1-methods/fromcontentstream.md) function to parse a content stream and then use the Find method to search for certain types of color operators and replace them with other color operators. In this example this has the effect of converting some black parts of the PDF to red. For a more comprehensive approach one would use the [ContentStreamOperation](../../../8-abcpdf.operations/g-contentstreamoperation/index.md) class to determine all content streams associated with the pages in question.

```csharp
using var doc = new Doc();
doc.Read("../Rez/spaceshuttle.pdf");
doc.RemapPages(new int[] { 1, 1 });
doc.PageNumber = 2;
var page = doc.ObjectSoup[doc.Page] as Page;
var layers = page.GetLayers();
using var st = new MemoryStream();
foreach (var layer in layers) {
  if (!layer.Decompress())
    throw new Exception("Unable to decompress stream.");
  byte[] data = layer.GetData();
  st.Write(data, 0, data.Length);
  layer.CompressFlate();
}
var array = ArrayAtom.FromContentStream(st.ToArray());
if (true) {
  var items = OpAtom.Find(array, [ "k" ]);
  foreach (var pair in items) { // make red
    var args = OpAtom.GetParameters(array, pair.Item2);
    if (args != null) {
      ((NumAtom)args[0]).Real = 0;
      ((NumAtom)args[1]).Real = 1;
      ((NumAtom)args[2]).Real = 1;
      ((NumAtom)args[3]).Real = 0;
    }
  }
}
if (true) {
  var items = OpAtom.Find(array, [ "rg" ]);
  foreach (var pair in items) { // make green
    var args = OpAtom.GetParameters(array, pair.Item2);
    if (args != null) {
      ((NumAtom)args[0]).Real = 0;
      ((NumAtom)args[1]).Real = 1;
      ((NumAtom)args[2]).Real = 0;
    }
  }
}
byte[] arrayData = array.GetData();
var so = new StreamObject(doc.ObjectSoup);
so.SetData(arrayData, 1, arrayData.Length - 2);
doc.SetInfo(page.ID, "/Contents:Del", "");
page.AddLayer(so);
doc.Save("ReplaceColors.pdf");
```

![ReplaceColors.pdf \[Page 1\]](../../../images/pdf/ReplaceColors.pdf.png)  
ReplaceColors.pdf \[Page 1\]

![ReplaceColors.pdf \[Page 2\]](../../../images/pdf/ReplaceColors.pdf2.png)  
ReplaceColors.pdf \[Page 2\]
