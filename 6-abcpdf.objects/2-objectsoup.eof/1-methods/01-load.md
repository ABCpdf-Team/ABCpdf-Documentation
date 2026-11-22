# Load Function

Loads the file trailer data.

## Syntax

*C#*

`void Load(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup)`

## Params

| Name | Description |
| :---: | --- |
| soup | The [ObjectSoup](../../2-objectsoup/index.md) of a Doc object. The Doc must have been loaded using Doc.Read. |

## Notes

Loads the file trailer data.

## Example

The following code tests to see if any of the revisions in a document are hybrid.

```csharp
bool isHybrid = false;
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
using (var eof = new ObjectSoup.Eof()) {
  eof.Load(doc.ObjectSoup);
  var xref = eof.XRef;
  while (xref != null) {
    if (xref.Type == ObjectSoup.XRefType.Hybrid) {
      isHybrid = true;
      break;
    }
    xref = xref.Prev;
  }
}
// do something with isHybrid
```
