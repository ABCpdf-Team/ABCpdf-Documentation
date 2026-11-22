# AddImageToChain Function

Adds a new page from a paged HTML or PostScript render.

## Syntax

```csharp
int AddImageToChain(int id)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| id | The ID of the previous object in the chain. |
| return | The ID of the newly added object. |

## Notes

Some web pages are too large to fit on one PDF page.

To split a web page across multiple PDF pages you need to call [AddImageUrl](addimageurl.md) or [AddImageHtml](addimageurl.md) to render the first page. The ID returned from these calls represents the head of the chain.

To add subsequent pages to the chain you need to make calls to AddImageToChain passing in the previous image from the chain each time.

As well as using chaining to split web pages across multiple PDF pages you can also use it to split your web pages across multiple columns within a page. You can even split your chain to generate multiple copies of the same page.

More information can be found in the [HTML / CSS Rendering](../../../3-concepts/g-htmlrender.md) section of the documentation.

Similarly some PostScript (PS) files contain more than one page of content.

To split a PS file across multiple PDF pages you need to call [AddImageFile](addimagefile.md) or [AddImageData](addimagedata.md) to render the first page. The ID returned from these calls represents the head of the chain.

To add subsequent pages to the chain you need to make calls to AddImageToChain passing in the previous image from the chain each time.

## Example

This example shows how to import an HTML page into a multi-page PDF document.

We first create a [Doc](../index.md) object and inset the edges a little so that the HTML will appear in the middle of the page.

```csharp
using var doc = new Doc();
doc.Rect.Inset(72, 144);
```

We add the first page of HTML. We save the returned ID as this will be used to add subsequent pages.

```csharp
int id = doc.AddImageUrl("https://www.yahoo.com/");
```

We now chain subsequent pages together. We stop when we reach a page which wasn't truncated.

```csharp
while (true) {
  doc.FrameRect();
  if (!doc.Chainable(id))
    break;
  doc.Page = doc.AddPage();
  id = doc.AddImageToChain(id);
  if (doc.PageCount > 5)
    break;
}
```

Finally we save.

```csharp
doc.Save("paged_html.pdf");
```

We get the following output.

|  |  |
| --- | --- |
| ![paged_html.pdf \[Page 1\]](../../../images/pdf/paged_html.pdf.png)<br>paged_html.pdf \[Page 1\] | ![paged_html.pdf \[Page 2\]](../../../images/pdf/paged_html.pdf2.png)<br>paged_html.pdf \[Page 2\] |
