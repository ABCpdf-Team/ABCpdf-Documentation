# HTMLTables Example Project

## Project

The project detailed here shows how to create PDF tables based on an HTML type input.

There is a certain amount of overlap between this project, the WPFTable and the PDFTable Example projects. All do similar things in slightly different ways.

This project is based on HTML style input rather than programmatic control or WPF.

The core of the project is the HtmlDoc class. This takes simple HTML containing tables, rows and cells, lays it out and flows it onto as many pages as are needed.

Large images are scaled down to fit. After each draw you can obtain the areas that have been filled, either with or without borders and dividing lines. The example uses this to draw outlines round the content.

Note that repeating table headers and footers are not currently supported.

