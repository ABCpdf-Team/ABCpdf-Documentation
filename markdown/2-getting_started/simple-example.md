# Simple Example

## Intro
Creating a PDF is simple: create an ABCpdf `Doc` and add content (text, images, graphics). Content is added to the current `Page` and within the current `Rect`. The default page is page 1 and the default rect is the entire page.

During development, `FrameRect` can outline the current rectangle for clarity. Adding content returns object IDs you can later use to query or change properties.

## Code
Create a document, set font size, add text, and save.

[C#]
```csharp
Doc theDoc = new Doc();
theDoc.FontSize = 96;
theDoc.AddText("Hello World");
theDoc.Save(Server.MapPath("simple.pdf"));
```

[Visual Basic]
```vbnet
Dim theDoc As Doc = New Doc()
theDoc.FontSize = 96
theDoc.AddText("Hello World")
theDoc.Save(Server.MapPath("simple.pdf"))
```

## Results
An output PDF like `simple.pdf` with large "Hello World" text.