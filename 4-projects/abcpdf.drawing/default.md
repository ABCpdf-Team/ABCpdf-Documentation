# ABCpdf.Drawing Example Project

## Project

This is a project designed to parallel the System.Drawing namespace.

For example, a System.Drawing.Pen will map to a WebSupergoo.ABCpdf14.Drawing.Pen and a System.Drawing.Bitmap will map to a WebSupergoo.ABCpdf14.Drawing.Bitmap.

Because the APIs and class structure are very similar, it is easy to port System.Drawing code over to produce ABCpdf documents rather than System.Drawing images.

In addition there are some ABCpdf extensions to allow support for advanced PDF oriented features like CMYK color spaces.

The project includes equivalents of the familiar classes - Graphics, GraphicsPath, Pen, Brush, Font, Image and Color - together with a PDFDocument class to hold the pages. You can draw lines, arcs, Bezier curves, rectangles and polygons, fill and stroke shapes, clip, rotate and scale, and add text and images.

Because the output is vector based rather than a bitmap, it stays sharp at any zoom level and prints at full resolution.

The Examples file shows each of these features in turn and a 3D column chart provides a larger example.

For more details see the project or the System.Drawing Example section in this documentation.

