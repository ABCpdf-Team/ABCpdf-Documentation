# Metadata Property

## Notes

Any document level Metadata.

The Metadata object holds XMP metadata such as Title, Author, Subject, Keywords, Creator, Creation Date and Modification Date.

There are multiple places that document level metadata can be stored in a PDF. The most commonly used are the Info entry of the Trailer and the Metadata entry of the Catalog.

The Info entry is the older and most widely recognized location. The Metadata entry is a more recent XML based store introduced in PDF 1.4. It is important that information within these stores is consistent. If the information is inconsistent then you will find that the metadata reported by different applications is different.

To try and reduce the amount of confusion caused by multiple metadata entries, PDF 2.0 deprecated all Info entries apart from the CreationDate and ModDate. To be PDF 2.0 compliant you should put all metadata into the Metadata entry rather than the Info one.

## Example

This example shows how to insert document properties. Document properties can be viewed from Acrobat Reader and most commonly provide information on the document origin.

Complex XMP metadata can be constructed using the Adobe XMP Toolkit. However in most cases you will only want simple metadata so you can use the standard Metadata object properties.

Here we load an existing PDF and set the Title and Author.

[C#] using var doc = new Doc(); doc.Read("../mypics/book.pdf"); var md = doc.ObjectSoup.Catalog.Metadata; if (md == null) { md = new Metadata(doc.ObjectSoup); doc.ObjectSoup.Catalog.Metadata = md; } md.InfoSubject = "Finn Family Moomintroll"; md.InfoAuthor = "Tove Jansson"; doc.Save("metadata.pdf");

