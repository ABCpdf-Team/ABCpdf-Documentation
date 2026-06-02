# Large Table Example

## Setup

We start by creating our document object and reading the data for our table. For the purposes of this example we'll assume that our data is in a standard tab delimited format.

[C#] string text = File.ReadAllText("../Rez/text7.txt"); using var doc = new Doc(); // set up document doc.FontSize = 12; doc.Rect.Inset(20, 20);

## Rotate

We create a new table object passing in values to tell it what rectangle it can occupy (it takes the current document rectangle) and how many columns of data it should be prepared for.

Columns are assigned relative widths and expand horizontally to fit the table rectangle. Here we're specifying six columns and a number of relative widths. We're padding the cells so there are gaps between the rows and columns. Finally we specify a header which repeats as new pages are added.

[C#] PDFTable theTable = new PDFTable(doc, 6); // some columns extra width theTable.SetColumnWidths([ 2.0, 1.0, 3.0, 2.0, 1.0, 4.0 ]); theTable.CellPadding = 5; theTable.RepeatHeader = true;

## Add

We iterate through the table data adding rows and columns as we go. Every time we add a row we check to see if the page number has changed and restart the shading if it has. This ensures the header is always unshaded. Finally we save the document.

[C#] text = text.Replace("\r\n", "\r"); string[] theRows = text.Split([ '\r' ]); int thePage = 1; bool theShade = false; for (int i = 0; i < theRows.Length; i++) { theTable.NextRow(); string[] theCols = theRows[i].Split([ '\t' ]); theTable.AddTextStyled(theCols); if (doc.PageNumber > thePage) { thePage = doc.PageNumber; theShade = true; } if (theShade) theTable.FillRow("200 200 200", theTable.Row); theShade = !theShade; } doc.Save("table2.pdf");

## Results

Using a large quantity of input data. We get the following output.

table2.pdf - [Page 1]

