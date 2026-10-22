# FileSpecification Function

FileSpecification Constructor

## Syntax

[C#]

```csharp
<a href="../default.htm">FileSpecification</a>(<a href="../../2-objectsoup/default.htm">ObjectSoup</a> soup)<a href="../default.htm">FileSpecification</a>(<a href="../../2-objectsoup/default.htm">ObjectSoup</a> soup, string path)
```

## Params

| **Name** | **Description** |
| --- | --- |
| soup | The ObjectSoup to contain the newly created FileSpecification. |
| path | A file to embed within the file specification. |

## Notes

Create a FileSpecification.

This constructor which takes a path to a file will embed and compress the file data using the [CompressFlate](streamobject/1-methods/compressflate.md) function. It will also insert appropriate metadata using the [EmbeddedFileUpdateMetadata](embeddedfile/1-methods/updatemetadata.md) function.

The constructor which takes an array of data will similarly embed and compress the data. However since there is no file path metadata will not be assigned.

## Example

The example below shows how to combine a set of PDF documents into a portfolio. See the [Catalog.GetEmbeddedFiles](6-abcpdf.objects/catalog/1-methods/getembeddedfiles.md) function for how to extract files from a portfolio.

[C#]

```csharp
string[] files = {
  "../Rez/SignedDocument.pdf",
  "../Rez/spaceshuttle.pdf",
  "../Rez/Authorization.pdf",
  "../Rez/Portfolio1.pdf",
};
using var doc = new Doc();
var fileSpecs = new List<Tuple<string, FileSpecification>>();
foreach (string file in files) {
  byte[] data = null;
  using (var subDoc = new Doc()) {
    subDoc.Read(file);
    data = subDoc.GetData();
  }
  var embedFile = new EmbeddedFile(doc.ObjectSoup, data);
  embedFile.CompressFlate();
  var fileSpec = new FileSpecification(doc.ObjectSoup);
  fileSpec.EmbeddedFile = embedFile;
  fileSpec.Uri = file;
  string name = Path.GetFileName(file);
  fileSpecs.Add(new Tuple<string, FileSpecification>(name, fileSpec));
}
fileSpecs.Sort((a, b) => a.Item1.CompareTo(b.Item1));
// we do not really need to delete existing files but we do so as an example
doc.SetInfo(doc.Root, "/Names*/EmbeddedFiles*/Names:Del", "");
foreach (var fileSpec in fileSpecs) {
  doc.SetInfo(doc.Root, "/Names*/EmbeddedFiles*/Names*[]:Text", fileSpec.Item1);
  doc.SetInfo(doc.Root, "/Names*/EmbeddedFiles*/Names*[]:Ref", fileSpec.Item2.ID);
}
// add placeholder text
doc.AddText("This is a Adobe Acrobat Portfolio file. Please use Adobe Acrobat software to open it.");
// save
doc.ObjectSoup.Catalog.Version = 17;
doc.SaveOptions.Linearize = false;
doc.SetInfo(doc.Root, "/Collection*/D:Text", files[0]);
doc.Save("createportfolio.pdf");
```

