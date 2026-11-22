# XML to PDF

When ABCpdf was designed a conscious design decision was made not to make it XML based. While XML templates might be an obvious route to take there are problems with this approach.

The key factor is that the creation of a PDF document is an interactive one. Often you do not know how much text you're going to be adding until you're given the text. You may need to flow the text from one column to another, you may need to create a new page to hold any extra text or you may choose to reduce the font size so that all your text fits. These are the kinds of decision that are very difficult to describe in terms of XML.

Although it is easy to create an XML based PDF generator using a product like ABCpdf it is not possible to work the other way round. So you can produce template based documents using ABCpdf. If you were to want to implement interactive code using an XML based solution this would be impossible.

For an example of how to convert XML content to PDF using ABCpdf see the Tagged PDF Example project under the ABCpdf menu item. As well as demonstrating how to convert XML to PDF it also demonstrates how to add semantic tags to the document at the same time.
