# Fields and Forms

## Basics

PDF allows the creation of interactive forms. Sometimes you will hear these types of PDF referred to as electronic forms, eForms or AcroForms.

To a client an eForm simply looks like a normal PDF containing text boxes, buttons and other interactive elements of the type you typically see on the web.

Indeed eForms support elements almost identical to HTML forms. They also support mechanisms very similar or identical to HTML forms for content submission to a web server.

For more details see the Adobe Web Site.

## Fields

Most people coming to eForms will be coming from an HTML background. There are subtle differences between the PDF form model and the HTML form model that can cause confusion.

In HTML a form is part of a web page. Each field in the HTML form has a visible appearance on the page (with the exception of hidden fields). So the concept of a field and what it looks like on the page is pretty much identical.

eForms separate the idea of a field from its visible representation.

Each page of the document owns a set of visible annotations. There are lots of different types of annotation but the ones that are used in eForm fields are called widgets. A widget contains properties that allow a PDF reader to display it appropriately on the page.

Each document owns a tree structure of fields which spans the entire document. Each field has a name and also a full name (like a file path) which tells you how to get to that field from the top level of the tree. The leaves of the tree contain the visible widgets that you see on the pages. Note that PDF does not require that full names are unique.

So there are two independent sets of entities each with its own features. The bits you see and which people normally call fields are in fact widgets.

Widgets do not have a name or identity as such - it's just that they may be associated with a field which has an identity. Similarly a field doesn't exist at a location or on a page it is just that it is associated with a widget that exists at a particular location on a particular page.

ABCpdf hides these distinctions from you. When you ask for a field by name it will return you the widget associated with that field. Given the widget you can find out where it is physically located in terms of page numbers and page rectangles. Similarly if you have a widget you can ask it for a field name. Behind the scenes ABCpdf finds the field associated with the widget and returns you the field name.

## Why?

So why are eForms useful? There are a range of purposes to which eForms can be put. However probably the most common purpose is to provide placeholders in template PDFs.

Suppose you have a template document you want to use within ABCpdf. Using Acrobat you can insert form fields into the PDF at locations you want content to be inserted. Using ABCpdf you can automatically detect the locations of those fields and enter content at those locations - in other words, fill in (fill out) a PDF form programmatically.

If later you want to shift your content a little it's a simple matter to open the PDF in Acrobat and move the fields around.

See the eForm Example for details.

## Creation

You can use Acrobat to edit forms using the Advanced Editing tools available under the Tools menu.

However if you choose items from the Forms menu or toolbar then you will probably find that you end up editing your form in Adobe LiveCycle Designer rather than Acrobat.

Adobe Designer is an application which comes with Acrobat Pro. It uses PDF as an output medium. However the way that Designer operates means that forms created by Designer are fundamentally different from forms created by Acrobat.

For example an Acrobat created form typically contains a background and then a set of fields. The fields operate separately from the background.

Adobe Designer created forms do not make this distinction. They use a separate data store to specify the fields. The PDF content is merely the visible rendition of this field specification. The underlying field specification is made up of chunks of XML embedded in the PDF. This XML format is known as XFA - Adobe XML Forms Architecture.

XFA is referenced in, but is not part of, the ISO standard for PDF.

Because Designer documents are PDF documents you can add content to them using standard ABCpdf methods of adding PDF content. However if you then open them in Designer the content will most likely be deleted because Designer will recreate the PDF appearance using the separate field specification.

Equally because the PDF output is merely the visible rendition of a separate field specification the fields and background may be tied to each other. So you might use ABCpdf to delete a field and find that the border has been left behind.

In extreme cases the LiveCycle documents may not even contain any useful PDF content. Instead the PDF becomes a placeholder which contains an XFA document. The document is only really a thin PDF wrapper around XFA data. You will find that many PDF viewers (including Acrobat Reader X and earlier) cannot display this type of PDF properly.

If you have input to the document creation process, using LiveCycle to save the file as "Adobe Static PDF Form" may help.

If you want to modify forms you will generally find it easier to work with Acrobat created forms than Designer created ones.

