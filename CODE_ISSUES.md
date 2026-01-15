# Code Issues

This document tracks Windows-specific code and any code not valid for .NET 10.0 or C# 14 observed during manual conversion.

## Windows-Specific Code

- [markdown/5-abcpdf/doc/1-methods/addimageurl-function.md](markdown/5-abcpdf/doc/1-methods/addimageurl-function.md)

```csharp
using var doc = new Doc();
doc.AddImageUrl("http://www.google.com/");
doc.Save(Server.MapPath("htmlimport.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addpage-function.md](markdown/5-abcpdf/doc/1-methods/addpage-function.md)

```csharp
using var doc = new Doc();
// ... add pages and text ...
doc.Save(Server.MapPath("docaddpage.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addtext-function.md](markdown/5-abcpdf/doc/1-methods/addtext-function.md)

```csharp
using var doc = new Doc();
// ... set fonts and add text ...
doc.Save(Server.MapPath("docaddtext.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/save-function.md](markdown/5-abcpdf/doc/1-methods/save-function.md)

```csharp
using var doc = new Doc();
doc.AddText("Hello World");
doc.Save(Server.MapPath("docsave.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/framerect-function.md](markdown/5-abcpdf/doc/1-methods/framerect-function.md)

```csharp
using var doc = new Doc();
doc.Rect.Inset(50, 100);
doc.FrameRect();
doc.Save(Server.MapPath("docframerect.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/fillrect-function.md](markdown/5-abcpdf/doc/1-methods/fillrect-function.md)

```csharp
using var doc = new Doc();
doc.Rect.Inset(200, 100);
doc.Color.Blue = 255;
doc.FillRect();
doc.Save(Server.MapPath("docfillrect.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addoval-function.md](markdown/5-abcpdf/doc/1-methods/addoval-function.md)

```csharp
using var doc = new Doc();
doc.Width = 80;
doc.Rect.Inset(50, 50);
doc.Color.String = "255 0 0";
doc.AddOval(true);
doc.Color.String = "0 255 0 128";
doc.AddOval(false);
doc.Save(Server.MapPath("docaddoval.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addpoly-function.md](markdown/5-abcpdf/doc/1-methods/addpoly-function.md)

```csharp
using var doc = new Doc();
doc.Width = 80;
doc.Color.String = "255 0 0";
doc.AddPoly("124 158 300 700 476 158 15 493 585 493 124 158", true);
doc.Color.String = "0 255 0 a128";
doc.AddPoly("124 158 300 700 476 158 15 493 585 493 124 158", false);
doc.Save(Server.MapPath("docaddpoly.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addpie-function.md](markdown/5-abcpdf/doc/1-methods/addpie-function.md)

```csharp
using var doc = new Doc();
doc.Width = 80;
doc.Rect.Inset(50, 50);
doc.Color.String = "255 0 0";
doc.AddPie(0, 90, true);
doc.Color.String = "0 255 0";
doc.AddPie(180, 270, false);
doc.Save(Server.MapPath("docaddpie.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addxobject-function.md](markdown/5-abcpdf/doc/1-methods/addxobject-function.md)

```csharp
using var doc = new Doc();
doc.Rect.Inset(50, 50);
doc.Transform.Rotate(20, 200, 200);
doc.Color.SetRgb(200, 200, 255);
doc.FillRect();
var pm = new PixMap(doc.ObjectSoup);
using var img = (Bitmap)Bitmap.FromFile(Server.MapPath("mypics/mypic.png"));
pm.SetBitmap(img, true);
doc.AddXObject(pm);
doc.Save(Server.MapPath("examplePixMapBitmap.pdf")); // Windows specific
```

## Invalid .NET 10.0 / C# 14 Code

- None observed yet.

- [markdown/5-abcpdf/doc/1-methods/addobject-function.md](markdown/5-abcpdf/doc/1-methods/addobject-function.md)

```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/sample.pdf")); // Windows specific
// ... set Trailer.Info and remove Metadata ...
doc.Save(Server.MapPath("docaddobject.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addline-function.md](markdown/5-abcpdf/doc/1-methods/addline-function.md)

```csharp
using var doc = new Doc();
// ... draw lines ...
doc.Save(Server.MapPath("docaddline.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addarc-function.md](markdown/5-abcpdf/doc/1-methods/addarc-function.md)

```csharp
using var doc = new Doc();
doc.AddArc(0, 270, 300, 400, 200, 300);
doc.Save(Server.MapPath("docaddarc.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addbookmark-function.md](markdown/5-abcpdf/doc/1-methods/addbookmark-function.md)

```csharp
using var doc = new Doc();
// ... add nested bookmarks ...
doc.Save(Server.MapPath("docaddbookmark.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/addfont-function.md](markdown/5-abcpdf/doc/1-methods/addfont-function.md)

```csharp
using var doc = new Doc();
// ... add fonts and text ...
doc.Save(Server.MapPath("docaddfont.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/embedfont-function.md](markdown/5-abcpdf/doc/1-methods/embedfont-function.md)

```csharp
using var doc = new Doc();
doc.Font = doc.EmbedFont("Comic Sans MS");
doc.Save(Server.MapPath("docembedfont.pdf")); // Windows specific
```

- [markdown/5-abcpdf/doc/1-methods/append-function.md](markdown/5-abcpdf/doc/1-methods/append-function.md)

```csharp
using var doc1 = new Doc();
using var doc2 = new Doc();
doc1.Append(doc2);
doc1.Save(Server.MapPath("docjoin.pdf")); // Windows specific
```

## Invalid .NET 10.0 / C# 14 Code

- None observed yet.
