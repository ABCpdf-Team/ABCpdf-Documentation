# WPF Tables Example

## XAML

First, we define the table structure.

Our Small and Large tables have a fairly simple structure. For example, the small table structure is defined in a XAML design file - SmallTable.xaml.

<Table Name="ItemsTable" CellSpacing="10" BorderBrush="Black" BorderThickness="2" TextAlignment="Justify"> <Table.Columns> <TableColumn Width="120"/> <TableColumn Width="180"/> <TableColumn Width="120"/> <TableColumn Width="140"/> <TableColumn Width="140"/> </Table.Columns> <TableRowGroup Background="White" DataContext="{Binding Source={StaticResource InputData}, Path=[0]}"> <TableRow> <TableCell> <Paragraph> <TextBlock TextWrapping="Wrap" Text="{Binding Path=Columns[0]}"/> </Paragraph> </TableCell> <TableCell> <Paragraph> <TextBlock TextWrapping="Wrap" Text="{Binding Path=Columns[1]}"/> </Paragraph> </TableCell> <TableCell> <Paragraph> <TextBlock TextWrapping="Wrap" Text="{Binding Path=Columns[2]}"/> </Paragraph> </TableCell> <TableCell> <Paragraph> <TextBlock TextWrapping="Wrap" Text="{Binding Path=Columns[3]}"/> </Paragraph> </TableCell> <TableCell> <Paragraph> <TextBlock TextWrapping="Wrap" Text="{Binding Path=Columns[4]}"/> </Paragraph> </TableCell> </TableRow> </TableRowGroup> </Table>;

Refer to the MSDN WPF Table Overview for more information on how to define WPF tables. Note that we are using Table and not Grid because we need to place our table in a Flow Document. Although Grid can be wrapped in a UI container so as to appear in a flow document, it cannot be split over multiple pages.

Our table definition contains a single row with five columns. We will see later on how to duplicate this row so that there is one for every item in the data source so as to achieve list binding in code. Our data source is defined as follows:

<c:TextDataProvider x:Key="InputData" FileName="text6.txt"/>

Our TextDataProvider is a custom-written class that extracts text from a tab separated input file. It supplies this text to the targets via the binding indicated by the DataContext and Binding attributes:

<TableRowGroup Background="White" DataContext="{Binding Source={StaticResource InputData}, Path=[0]}">

... indicates that this row group is bound to the first line of the file.

<TextBlock TextWrapping="Wrap" Text="{Binding Path=Columns[0]}"/>

... indicates that the text block in this cell is bound to the first column of the line.

The large table structure is almost identical to the small table structure. It is defined in LargeTable.xaml. Because the pagination is done automatically by the flow document paginator, the implementation of the two tables is identical apart from the small differences in the XAML table definitions. The difference between the table definitions is that they bind to different input files and have different numbers of columns.

## Bind

Next, we add the table rows

Because Table does not support binding to a collection of Items (unlike for example other WPF UI controls such as ListBox or ItemsControl) - also known as list binding, we manually add table rows in code.

To do so, we load the XAML design file at runtime. We then use XML classes to duplicate rows and bind them to different data items. To load XAML design files at runtime, we must set their type as "Content" in the Visual Studio file properties. It may also help to copy them into the binary location.

[C#] MemoryStream ModifyXamlUsingTextProvider(string inDataProvider, string inXamlFile, string inTableXamlLocation, string inTableName) { var dataProvider = new TextDataProvider(inDataProvider); var xamlDoc = new XmlDocument(); using var xamlFile = new FileStream(inXamlFile, FileMode.Open); xamlDoc.Load(xamlFile); var nsmgr = new XmlNamespaceManager(xamlDoc.NameTable); nsmgr.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml/presentation"); var itemsTable = xamlDoc.DocumentElement.SelectSingleNode(inTableXamlLocation + "[@Name='" + inTableName + "']", nsmgr); for (int i = 1; i < dataProvider.Count; i++) { var rowGroup = itemsTable.LastChild; var newRowGroup = rowGroup.Clone(); string bindingText = newRowGroup.Attributes["DataContext"].Value; bindingText = bindingText.Remove(bindingText.LastIndexOf('[')) + "[" + i + "] }"; newRowGroup.Attributes["DataContext"].Value = bindingText; newRowGroup.Attributes["Background"].Value = (i % 2) == 0 ? "White" : "LightGray"; itemsTable.InsertAfter(newRowGroup, rowGroup); } var memStream = new MemoryStream(); xamlDoc.Save(memStream); return memStream; }

The data provider is loaded directly from code so we know how many data items (text file lines) are available. The XAML design document is loaded as a XmlDocument. We retrieve the XML node that corresponds to our table via the Xpath query passed to SelectSingleNode() in the document element. For this, we need to load the WPF namespace else the query will fail.

Once we have our items table, we get hold of the row group. The row group is the last child of the table. We duplicate the row group by using the XmlNode.Clone() method and then change the data binding to point to the next row. We also alternate the row background colors. After all items have been added, we save the XML document into a memory stream.

[C#] string dataProvider = null, xamlFile = null, tableXamlLocation = null, tableName = null; // ... user code to provide paths for these strings if (dataProvider == null || xamlFile == null || tableXamlLocation == null || tableName == null) return; // not provided using var stm = ModifyXamlUsingTextProvider(dataProvider, xamlFile, tableXamlLocation, tableName); var page = XamlReader.Load(stm) as System.Windows.Controls.Page; var docViewer = LogicalTreeHelper.FindLogicalNode(page, "DocViewer") as FlowDocumentPageViewer; page.Content = null;

## Save

The table is saved as XPS first and then converted into PDF.

[C#] void SaveToXps(Stream fileStream, FlowDocumentPageViewer viewer) { using var package = Package.Open(fileStream, FileMode.Create, FileAccess.ReadWrite); using var doc = new XpsDocument(package); var writer = XpsDocument.CreateXpsDocumentWriter(doc); var document = viewer.Document; writer.Write(document.DocumentPaginator); } void SaveToPdf(string pdfFileName, FlowDocumentPageViewer viewer) { using var memStream = new MemoryStream(); SaveToXps(memStream, viewer); using var pdfDoc = new Doc(); pdfDoc.Read(memStream, new XReadOptions() { FileExtension = ".xps" }); pdfDoc.Save(pdfFileName); }

We create an XPS file in memory using MemoryStream. We then pass the document paginator to the XPS writer. The document paginator splits the flow document into a set of pages and writes them to the XPS document. The PDF document Read() method accepts a Stream containing the XPS document and a type. After the XPS document has been loaded into the PDF document, this can be saved to file.

## XML

The Invoice and Space table examples bind to an XML data source and have a more complex structure.

As such, please see the XAML design files, InvoiceTable.xaml and SpaceTable.xml, for the full table structure.

Because the table input data is specified as XML, we can use the WPF standard data provider, XmlDataProvider, instead of our own custom TextDataProvider.

Because the data provider is XML, we can use the XmlDocument for the data files as well as XAML design files.

Each table item is mapped to an XML item so we can count the XML items and add a new row group for each one of them (bar of course the first one as defined in the design file). Note that the XmlDataProvider indexing is one rather than zero based.

## Results

We get output very similar to that from the Tables Example project. For example.

table2.pdf - [Page 1]

