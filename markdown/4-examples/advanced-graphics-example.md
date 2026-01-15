# Advanced Graphics Example

Low-level PDF content streams and drawing operators.

## Intro
Most drawing needs are met by methods like [FrameRect](../5-abcpdf/doc/1-methods/framerect.htm), [FillRect](../5-abcpdf/doc/1-methods/fillrect.htm), [AddLine](../5-abcpdf/doc/1-methods/addline.htm), and [AddArc](../5-abcpdf/doc/1-methods/addarc.htm). For finer control, use direct PDF content streams.

## Content
Page content is defined by the Content Stream. ABCpdf lets you create/modify these streams, exposing PDF operators.
For full operator details, see the Adobe PDF Specification.

## Paths
Standard path operators:
- Move (`m`), Line (`l`), Rect (`re`), Bézier (`c`), Close (`h`)
- Stroke (`S`), Fill (`f`), Clip (`W n`)

## State
Graphics state operators for line width, colors (Gray/RGB/CMYK), transforms (`cm`), line caps (`J`), joins (`j`), miter limit (`M`), and dash (`d`).

## Stroke
```csharp
using (var doc = new Doc()) {
  var theContent = new PDFContent(doc);
  theContent.SaveState();
  theContent.SetLineWidth(30);
  theContent.SetLineJoin(2);
  theContent.Move(124, 158);
  theContent.Line(300, 700);
  theContent.Line(476, 158);
  theContent.Line(15, 493);
  theContent.Line(585, 493);
  theContent.Close();
  theContent.Stroke();
  theContent.RestoreState();
  theContent.AddToDoc();
  doc.Save(Server.MapPath("adv_star_draw.pdf"));
}
```
```vbnet
Using doc As New Doc()
  Dim theContent As New PDFContent(doc)
  theContent.SaveState()
  theContent.SetLineWidth(30)
  theContent.SetLineJoin(2)
  theContent.Move(124, 158)
  theContent.Line(300, 700)
  theContent.Line(476, 158)
  theContent.Line(15, 493)
  theContent.Line(585, 493)
  theContent.Close()
  theContent.Stroke()
  theContent.RestoreState()
  theContent.AddToDoc()
  doc.Save(Server.MapPath("adv_star_draw.pdf"))
End Using
```

## Fill
```csharp
using (var doc = new Doc()) {
  var theContent = new PDFContent(doc);
  theContent.SaveState();
  theContent.SetLineWidth(30);
  theContent.SetLineJoin(2);
  theContent.Move(124, 158);
  theContent.Line(300, 700);
  theContent.Line(476, 158);
  theContent.Line(15, 493);
  theContent.Line(585, 493);
  theContent.Close();
  theContent.Fill();
  theContent.RestoreState();
  theContent.AddToDoc();
  doc.Save(Server.MapPath("adv_star_fill.pdf"));
}
```
```vbnet
Using doc As New Doc()
  Dim theContent As New PDFContent(doc)
  theContent.SaveState()
  theContent.SetLineWidth(30)
  theContent.SetLineJoin(2)
  theContent.Move(124, 158)
  theContent.Line(300, 700)
  theContent.Line(476, 158)
  theContent.Line(15, 493)
  theContent.Line(585, 493)
  theContent.Close()
  theContent.Fill()
  theContent.RestoreState()
  theContent.AddToDoc()
  doc.Save(Server.MapPath("adv_star_fill.pdf"))
End Using
```

## Bézier
```csharp
using (var doc = new Doc()) {
  var theContent = new PDFContent(doc);
  theContent.SaveState();
  theContent.SetLineWidth(30);
  theContent.Move(100, 50);
  theContent.Bezier(200, 650, 400, 550, 500, 250);
  theContent.Stroke();
  theContent.RestoreState();

  // annotate Bezier curve in red
  doc.Color.String = "255 0 0";
  doc.Width = 20;
  doc.FontSize = 30;
  doc.Pos.String = "100 50";
  doc.AddText("p0 (current point)");
  doc.Pos.String = "200 650";
  doc.Pos.Y = doc.Pos.Y + doc.FontSize;
  doc.AddText("p1 (x1, y1)");
  doc.Pos.String = "400 550";
  doc.Pos.Y = doc.Pos.Y + doc.FontSize;
  doc.AddText("p2 (x2, y2)");
  doc.Pos.String = "500 250";
  doc.Pos.X = doc.Pos.X - doc.FontSize;
  doc.AddText("p3 (x3, y3)");
  doc.AddLine(100, 50, 200, 650);
  doc.AddLine(400, 550, 500, 250);
  theContent.AddToDoc();
  doc.Save(Server.MapPath("adv_bezier.pdf"));
}
```
```vbnet
Using doc As New Doc()
  Dim theContent As New PDFContent(doc)
  theContent.SaveState()
  theContent.SetLineWidth(30)
  theContent.Move(100, 50)
  theContent.Bezier(200, 650, 400, 550, 500, 250)
  theContent.Stroke()
  theContent.RestoreState()

  ' annotate Bezier curve in red
  doc.Color.String = "255 0 0"
  doc.Width = 20
  doc.FontSize = 30
  doc.Pos.String = "100 50"
  doc.AddText("p0 (current point)")
  doc.Pos.String = "200 650"
  doc.Pos.Y = doc.Pos.Y + doc.FontSize
  doc.AddText("p1 (x1, y1)")
  doc.Pos.String = "400 550"
  doc.Pos.Y = doc.Pos.Y + doc.FontSize
  doc.AddText("p2 (x2, y2)")
  doc.Pos.String = "500 250"
  doc.Pos.X = doc.Pos.X - doc.FontSize
  doc.AddText("p3 (x3, y3)")
  doc.AddLine(100, 50, 200, 650)
  doc.AddLine(400, 550, 500, 250)
  theContent.AddToDoc()
  doc.Save(Server.MapPath("adv_bezier.pdf"))
End Using
```

## Clip
```csharp
using (var doc = new Doc()) {
  var theContent = new PDFContent(doc);
  theContent.SaveState();
  theContent.SetLineWidth(30);
  theContent.SetLineJoin(2);
  theContent.Move(124, 158);
  theContent.Line(300, 700);
  theContent.Line(476, 158);
  theContent.Line(15, 493);
  theContent.Line(585, 493);
  theContent.Clip();
  theContent.Rect(100, 200, 400, 400);
  theContent.Fill();
  theContent.RestoreState();
  theContent.AddToDoc();
  doc.Save(Server.MapPath("adv_star_clip.pdf"));
}
```
```vbnet
Using doc As New Doc()
  Dim theContent As New PDFContent(doc)
  theContent.SaveState()
  theContent.SetLineWidth(30)
  theContent.SetLineJoin(2)
  theContent.Move(124, 158)
  theContent.Line(300, 700)
  theContent.Line(476, 158)
  theContent.Line(15, 493)
  theContent.Line(585, 493)
  theContent.Clip()
  theContent.Rect(100, 200, 400, 400)
  theContent.Fill()
  theContent.RestoreState()
  theContent.AddToDoc()
  doc.Save(Server.MapPath("adv_star_clip.pdf"))
End Using
```

## Caps
Code demonstrates butt, round, and projecting square caps with annotations.

## Joins
Code demonstrates miter, round, and bevel joins with annotations.

## Dash
Examples for dash patterns like `[ ] 0`, `[ 90 ] 0`, `[ 60 ] 30`, `[ 60 30 ] 0`.

## XForms / Transforms
Apply transforms to content and re-add; e.g., rotation matrix and red stroke overlay.

## Results
- ../images/pdf/adv_star_draw.pdf.png — Stroke
- ../images/pdf/adv_star_fill.pdf.png — Fill
- ../images/pdf/adv_bezier.pdf.png — Bézier
- ../images/pdf/adv_star_clip.pdf.png — Clip
- ../images/pdf/adv_linecap.pdf.png — Caps
- ../images/pdf/adv_linejoin.pdf.png — Joins
- ../images/pdf/adv_dashes.pdf.png — Dash
- ../images/pdf/adv_star_rotate.pdf.png — Transform
