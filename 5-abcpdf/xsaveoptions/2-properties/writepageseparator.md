# WritePageSeparator Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `XSaveOptions.PageSeparatorMethod` | null | No | The delegate called to write the page separator for export. |

## Notes

This delegate is called during HTML export.

If it is null, a default page separator is produced for each page. You can customize the page separator by setting this property.

The definition of the XSaveOptions.PageSeparatorMethod delegate is as follows.

```csharp
delegate void PageSeparatorMethod(int pageNum, ExportArgs e);
```

pageNum is the page number, starting with 1.

The page separator is to be written to e.Writer. e.Writer is an XmlWriter for HTML export.

## Example

The following example shows how to customize the page separator.

```csharp
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
doc.SaveOptions.WritePageSeparator = delegate (int pageNum, XSaveOptions.ExportArgs e) {
  var writer = (XmlWriter)e.Writer;
  if (pageNum > 1) {
    writer.WriteStartElement("hr");
    writer.WriteEndElement();
  }
  writer.WriteStartElement("div");
  writer.WriteAttributeString("align", "right");
  writer.WriteString(string.Format("Page {0}", pageNum));
  writer.WriteFullEndElement();
};
doc.Save("PageSeparator.htm");
```
