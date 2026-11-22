# PDF Metadata Representation and Info Store

## Intro

PDF documents can contain metadata to summarize basic information about the document. For example a document might have a title and an author.

The original method for doing this was via an Info entry in the document trailer. This supported title, author, subject, keywords, creator, producer, whether the PDF is trapped or not, creation date and modification date. This was sufficient for most people but some required more extensible or more structured data.

As such in PDF 1.4 Adobe introduced a new XML based metadata store represented in a format called Extensible Metadata Platform (XMP). You can attach XMP data to any object in a PDF so you could have one XMP set of metadata attached to the document, and then one for each image in the document. XMP is now an ISO standard and it allows an extreme level of flexibility at a certain cost in terms of complexity.

While XMP solved one problem, it introduced another: it was now possible to include both old Info style metadata and also XMP style metadata in the same document. Some people would use the Info because it was simple and backwards compatible. Others would use the XMP because it was more flexible and modern. If you end up with two titles for the document - which do you use?

To solve this problem the Info store was deprecated in PDF 2.0. As such you should now use the XMP based metadata store. ABCpdf includes objects which make it easy to work with this type of data without having to get into complex XML parsing and validation. However for backwards compatibility you may occasionally find that you need to work with the old Info style store.

## Metadata

Best practice is to use the [Doc.ObjectSoup.Catalog.Metadata](../6-abcpdf.objects/catalog/2-properties/metadata.md) property.

This property allows you access to standard items of metadata while abstracting you from XMP construction and validation.

If you require a higher level of control over the XMP data store then you can skip the helper properties and go direct to the XML.

For full details and code samples please see the [Doc.ObjectSoup.Catalog.Metadata](../6-abcpdf.objects/catalog/2-properties/metadata.md) property.

## Info

Best practice is to use the [Doc.ObjectSoup.Catalog.Metadata](../6-abcpdf.objects/catalog/2-properties/metadata.md) property, but occasionally you may find that you need to work with the old Info store.

This example shows you how you can create and set data in this store. It requires some knowledge of the Adobe PDF Specification. See the following for details:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 317, page 550.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=558)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 349, page 712.](https://www.iso.org/standard/63534.html)

Looking at the specification we can see that the document properties we want to change are referenced from an entry called Info in the document trailer. So we create a new PDF dictionary and reference it from the trailer, then we insert our summary information into the object, finally we save.

```csharp
Doc doc = new Doc();
doc.Page = doc.AddPage();
doc.AddText("My first document...");
int theID = doc.AddObject("<< >>");
doc.SetInfo(-1, "/Info:Ref", theID.ToString());
doc.SetInfo(theID, "/Title:Text", "ABCpdf");
doc.SetInfo(theID, "/Author:Text", "WebSupergoo");
doc.SetInfo(theID, "/Subject:Text", "ABCpdf Documentation");
doc.SetInfo(theID, "/Keywords:Text", "ABCpdf,PDF,Docs");
doc.SetInfo(theID, "/Creator:Text", "WebSupergoo");
DateTime theDate = DateTime.Now;
doc.SetInfo(theID, "/CreationDate:Text", theDate);
doc.SetInfo(theID, "/ModDate:Text", theDate);
doc.SetInfo(theID, "/Trapped:Name", "False");
doc.Save(Server.MapPath("docprops.pdf"));
```

## Transfer

Sometimes you may need to copy information between the old Info store and the new Metadata store.

This example shows how you might do this. Deciding exactly how to deal with clashes between the two stores is rather application dependent so you should be expecting that you will want to adapt this code to your needs.

```csharp
// We do not copy over the CreationDate or ModDate because we do not have to
// (they have not been deprecated) and we are likely simply to end up with
// two clashing values. A similar situation is true for Trapped.
bool copyCreationDate = false, copyModDate = false, copyTrapped = false;
IndirectObject trailer = doc.ObjectSoup.Trailer;
DictAtom info = trailer.Resolve(Atom.GetItem(trailer.Atom, "Info")) as DictAtom;
if (info != null) {
  string title = Atom.GetText(trailer.Resolve(Atom.GetItem(info, "Title")));
  string author = Atom.GetText(trailer.Resolve(Atom.GetItem(info, "Author")));
  string subject = Atom.GetText(trailer.Resolve(Atom.GetItem(info, "Subject")));
  string keywords = Atom.GetText(trailer.Resolve(Atom.GetItem(info, "Keywords")));
  string creator = Atom.GetText(trailer.Resolve(Atom.GetItem(info, "Creator")));
  string producer = Atom.GetText(trailer.Resolve(Atom.GetItem(info, "Producer")));
  string creationDate = copyCreationDate ? Atom.GetText(trailer.Resolve(Atom.GetItem(info, "CreationDate"))) : null;
  string modDate = copyModDate ? Atom.GetText(trailer.Resolve(Atom.GetItem(info, "ModDate"))) : null;
  string trapped = copyTrapped ? Atom.GetText(trailer.Resolve(Atom.GetItem(info, "Trapped"))) : null;
  bool hasValues = (!string.IsNullOrEmpty(title)) || (!string.IsNullOrEmpty(author)) || (!string.IsNullOrEmpty(subject)) ||
        (!string.IsNullOrEmpty(keywords)) || (!string.IsNullOrEmpty(creator)) || (!string.IsNullOrEmpty(producer)) ||
        (!string.IsNullOrEmpty(creationDate)) || (!string.IsNullOrEmpty(modDate)) || (!string.IsNullOrEmpty(trapped));
  if (hasValues) {
    Metadata md = doc.ObjectSoup.Catalog.Metadata;
    if (md == null) {
      md = new Metadata(doc.ObjectSoup);
      doc.ObjectSoup.Catalog.Metadata = md;
    }
    if ((!string.IsNullOrEmpty(title)) && (string.IsNullOrEmpty(md.InfoTitle)))
      md.InfoTitle = title;
    if ((!string.IsNullOrEmpty(author)) && (string.IsNullOrEmpty(md.InfoAuthor)))
      md.InfoAuthor = author;
    if ((!string.IsNullOrEmpty(subject)) && (string.IsNullOrEmpty(md.InfoSubject)))
      md.InfoSubject = subject;
    if ((!string.IsNullOrEmpty(keywords)) && (string.IsNullOrEmpty(md.InfoKeywords)))
      md.InfoKeywords = keywords;
    if ((!string.IsNullOrEmpty(creator)) && (string.IsNullOrEmpty(md.InfoCreator)))
      md.InfoCreator = creator;
    if ((!string.IsNullOrEmpty(producer)) && (string.IsNullOrEmpty(md.InfoProducer)))
      md.InfoProducer = producer;
    if ((!string.IsNullOrEmpty(creationDate)) && (string.IsNullOrEmpty(md.InfoCreationDate)))
      md.InfoCreationDate = StringAtom.StringToDate(creationDate).ToString("o");
    if ((!string.IsNullOrEmpty(modDate)) && (string.IsNullOrEmpty(md.InfoModDate)))
      md.InfoModDate = StringAtom.StringToDate(modDate).ToString("o");
  }
  Atom.RemoveItem(info, "Title");
  Atom.RemoveItem(info, "Author");
  Atom.RemoveItem(info, "Subject");
  Atom.RemoveItem(info, "Keywords");
  Atom.RemoveItem(info, "Creator");
  Atom.RemoveItem(info, "Producer");
  if (copyCreationDate)
    Atom.RemoveItem(info, "CreationDate");
  if (copyModDate)
    Atom.RemoveItem(info, "ModDate");
  if (copyTrapped)
    Atom.RemoveItem(info, "Trapped");
}
```
