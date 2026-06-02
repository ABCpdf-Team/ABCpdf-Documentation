# System.Drawing Example

## Intro

This example shows how to port System.Drawing code for output to PDF.

You may have System.Drawing code which writes output to the screen or an image or to a printer. You may wish to modify this code to write to a PDF. ABCpdf comes with wrapper code which can significantly ease this process.

You can find a full example project including the wrapper classes under the ABCpdf menu item.

## Basics

The wrapper contains the following namespaces:

These contain classes which are direct analogues for the classes contained in the System.Drawing namespaces. For example, a System.Drawing.Pen maps to a WebSupergoo.ABCpdf14.Drawing.Pen and a System.Drawing.Bitmap maps to a WebSupergoo.ABCpdf14.Drawing.Bitmap.

The procedure for porting your System.Drawing code is simple:

In general, the number of calls which do not have analogues in ABCpdf.Drawing should be small. However, we provide the full source code for System.Drawing so extending the assembly is simple.

As well as the standard functions analogous to those in System.Drawing, the ABCpdf14.Drawing namespace also contains similar functions aimed at greater control over the PDF production process. For example, the ABCpdf Color class contains a FromCmyk function to allow the construction of CMYK colors as well as RGB ones.

## Original

We start with our source System.Drawing code.

[C#]// create a canvas for painting on Bitmap pg = new Bitmap((int)(8.5 * 72), (int)(11 * 72)); Graphics gr = Graphics.FromImage(pg); // clear the canvas to white Rectangle pgRect = new Rectangle(0, 0, pg.Width, pg.Height); SolidBrush solidWhite = new SolidBrush(Color.White); gr.FillRectangle(solidWhite, pgRect); // load a new image and draw it centered on our canvas Stream stm = Assembly.GetExecutingAssembly().GetManifestResourceStream("Examples.pic1.jpg"); Image img = Image.FromStream(stm); int w = img.Width * 2; int h = img.Height * 2; Rectangle rc = new Rectangle((pg.Width - w) / 2, (pg.Height - h) / 2, w, h); gr.DrawImage(img, rc); img.Dispose(); stm.Close(); // frame the image with a black border gr.DrawRectangle(new Pen(Color.Black, 4), rc); // add some text at the top left of the canvas Font fn = new Font("Comic Sans MS", 72); SolidBrush solidBlack = new SolidBrush(Color.Black); gr.DrawString("My Picture", fn, solidBlack, (int)(pg.Width * 0.1), (int)(pg.Height * 0.1)); // save the output pg.Save("../../abcpdf.drawing.gif", System.Drawing.Imaging.ImageFormat.Gif);

## Names

First, we swap out the old System.Drawing namespaces and insert our own ABCpdf.Drawing ones. Note that ABCpdf.Drawing uses structures like rectangles and points which are defined in System.Drawing. So, we create aliases to make it easy to reference them.

[C#]using System; using System.IO; using System.Reflection; using WebSupergoo.ABCpdf14.Drawing; using WebSupergoo.ABCpdf14.Drawing.Drawing2D; using WebSupergoo.ABCpdf14.Drawing.Text; using Rectangle = System.Drawing.Rectangle; using RectangleF = System.Drawing.RectangleF; using Point = System.Drawing.Point; using PointF = System.Drawing.PointF;

## Create

Because we're drawing on a page of a PDF document rather than on an image, we need to make a few modifications to the first lines of code.

[C#]// create a canvas for painting on var doc = new PDFDocument(); var pg = doc.AddPage((int)(8.5 * 300), (int)(11 * 300)); var gr = pg.Graphics;

## Draw

The drawing code remains completely unchanged.

[C#]// clear the canvas to white var pgRect = new Rectangle(0, 0, pg.Width, pg.Height); var solidWhite = new SolidBrush(Color.White); gr.FillRectangle(solidWhite, pgRect); // load a new image and draw it centered on our canvas using var stm = File.OpenRead("../mypics/pic1.jpg"); using var img = Image.FromStream(stm); int w = img.Width; int h = img.Height; Rectangle rc = new Rectangle((pg.Width - w) / 2, (pg.Height - h) / 2, w, h); gr.DrawImage(img, rc); // frame the image with a black border gr.DrawRectangle(new Pen(Color.Black, 4), rc); // add some text at the top left of the canvas Font fn = new Font("Comic Sans MS", 300); var solidBlack = new SolidBrush(Color.Black); gr.DrawString("My Picture", fn, solidBlack, (int)(pg.Width * 0.1), (int)(pg.Height * 0.1));

## Save

Because we're saving to a PDF document, we need to make a few modifications to the last lines of code.

[C#]// save the output doc.Save("abcpdf.drawing.pdf");

## Results

abcpdf.drawing.pdf

