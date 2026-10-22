# WPFTable Example Project

## Project

The project detailed here shows how to create PDF tables based on Windows Presentation Foundation (WPF) content.

There is a certain amount of overlap between this project, the PDFTable and the HTMLTables Example projects. All do similar things in slightly different ways.

This project is based on WPF structure rather than programmatic control or HTML style input. The WPF structure that exists is halfway between the type of layout control you get in HTML and the control you get in a more graphics oriented API like System.Drawing. It is sophisticated enough for document layout but with more complicated document layout structures you start to run into areas in which the structure constrains rather than enables.

You can read more about this and how to use this project in the WPF Tables Example section of this document.

The table layout is defined in XAML and populated at run time using data binding, from either an XML file or a tab separated text file. The examples include an invoice with a totals table.

The Table class displays the result in a FlowDocument viewer and saves it as PDF or XPS, with the table flowing across as many pages as are needed.

