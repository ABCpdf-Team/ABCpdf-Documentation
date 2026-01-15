# System.Drawing Example

Port `System.Drawing` code to output PDF using ABCpdf.Drawing wrappers.

## Basics
Namespaces:
```csharp
using WebSupergoo.ABCpdf13.Drawing;
using WebSupergoo.ABCpdf13.Drawing.Drawing2D;
using WebSupergoo.ABCpdf13.Drawing.Text;
```
These mirror `System.Drawing` classes like `Pen`, `Brush`, `Color`, `Bitmap`.

## Names
```csharp
using System;
using System.IO;
using System.Reflection;

using WebSupergoo.ABCpdf13.Drawing;
using WebSupergoo.ABCpdf13.Drawing.Drawing2D;
using WebSupergoo.ABCpdf13.Drawing.Text;
using Rectangle = System.Drawing.Rectangle;
using RectangleF = System.Drawing.RectangleF;
using Point = System.Drawing.Point;
using PointF = System.Drawing.PointF;
```

## Create
```csharp
// create a canvas for painting on
var doc = new PDFDocument();
var pg = doc.AddPage((int)(8.5 * 300), (int)(11 * 300));
var gr = pg.Graphics;
```
```vbnet
' create a canvas for painting on
Dim doc As New PDFDocument()
Dim pg = doc.AddPage(DirectCast(8.5 * 300, Integer), DirectCast(11 * 300, Integer))
Dim gr = pg.Graphics
```

## Draw
```csharp
// clear the canvas to white
var pgRect = new Rectangle(0, 0, pg.Width, pg.Height);
var solidWhite = new SolidBrush(Color.White);
gr.FillRectangle(solidWhite, pgRect);
// load a new image and draw it centered on our canvas
using var stm = File.OpenRead(Server.MapPath("mypics/pic1.jpg"));
using var img = Image.FromStream(stm);
int w = img.Width;
int h = img.Height;
Rectangle rc = new Rectangle((pg.Width - w) / 2, (pg.Height - h) / 2, w, h);
gr.DrawImage(img, rc);
// frame the image with a black border
gr.DrawRectangle(new Pen(Color.Black, 4), rc);
// add some text at the top left of the canvas
Font fn = new Font("Comic Sans MS", 300);
var solidBlack = new SolidBrush(Color.Black);
gr.DrawString("My Picture", fn, solidBlack, (int)(pg.Width * 0.1), (int)(pg.Height * 0.1));
```
```vbnet
' clear the canvas to white
Dim pgRect As New Rectangle(0, 0, pg.Width, pg.Height)
Dim solidWhite As New SolidBrush(Color.White)
gr.FillRectangle(solidWhite, pgRect)
' load a new image and draw it centered on our canvas
Dim stm As Stream = File.OpenRead(Server.MapPath("mypics/pic1.jpg"))
Dim img As Image = Image.FromStream(stm)
Dim w As Integer = img.Width
Dim h As Integer = img.Height
Dim rc As New Rectangle((pg.Width - w) / 2, (pg.Height - h) / 2, w, h)
gr.DrawImage(img, rc)
img.Dispose()
stm.Close()
' frame the image with a black border
gr.DrawRectangle(New Pen(Color.Black, 4), rc)
' add some text at the top left of the canvas
Dim fn As New Font("Comic Sans MS", 300)
Dim solidBlack As New SolidBrush(Color.Black)
gr.DrawString("My Picture", fn, solidBlack, DirectCast(pg.Width * 0.1, Integer), DirectCast(pg.Height * 0.1, Integer))
```

## Save
```csharp
// save the output
doc.Save(Server.MapPath("abcpdf.drawing.pdf"));
```
```vbnet
' save the output
doc.Save(Server.MapPath("abcpdf.drawing.pdf"))
```

## Results
![abcpdf.drawing.pdf](../../images/pdf/abcpdf.drawing.pdf.png) — abcpdf.drawing.pdf
