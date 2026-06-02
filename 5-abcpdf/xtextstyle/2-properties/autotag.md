# AutoTag Property

## Notes

Whether to automatically add accessibility tags or not. This is equivalent to the autotag stylerun attribute.

Autotagging will appropriately tag your documents based on the content you have added.

We use the Basic Layout Model as defined in the PDF specification. The root <Document> encloses the entire content, with <Part> and <Sect> defining major divisions and sections. Headings are represented by <H1> through <H6>, establishing a clear hierarchical outline, while <P> identifies individual paragraphs. Tables are constructed with <Table>, containing <TR> (table row) elements that hold <TH> for header cells and <TD> for data cells. Lists use <L>, where each <LI> (list item) is split into a <Lbl> label - such as a bullet or number - and <LBody> for the item’s body text. Additional block-level containers like <Art> for self-contained articles and <Div> for generic groups further refine the structure, ensuring that every meaningful piece of content is mapped from the tag tree to its exact position on the page.

Methods such as AddTextStyled will drop appropriate metatags into the content stream as items are added. The AutoTag process then converts these to PDF/UA compatible PDF tags at the point that the document is saved.

The tags that are added are of the form,,

The T entry specifies the PDF tag type - in this case a paragraph. The ID entry is a unique ID which can be used to track an item like a paragraph if it needs to be split across two pages. You can add an /Attr entry which is a DictAtom of items that will be added to the Structure Element. You can also add an /OBJR which is a reference to a singular object such as an annotation which has a defined meaning. This entry is the ID of the object rather than a RefAtom because there are no RefAtoms in a content stream.

However most normally you will allow AddTextStyled or methods such as Doc.Tag.Open to insert tags as appropriate. The standard autotagging process takes HTML styled text entries like <p> and <ul> and translates them into PDF analogues. If you wish you can add to these using the HTML styled text <tag> entry. For example,

If you set Doc.Style.AutoTag to false then you can specify your own tags instead of our standard replacements.

There is a next_id placeholder which returns a document specific unique ID starting at zero but be aware that this may clash with any MCIDs present so do not use it if for that purpose. If need an appropriate MCID you can use the next_mcid placeholder which will be replaced with the next available MCID for the page. IDs do not need to be numeric - they are simply a unique string, however MCIDs are always numeric.

You can specify start and end tags using the "tag-start" and "tag-end" styled text entries.

## Example

The following code creates a simple tagged document containg text and an image.

[C#] using var doc = new Doc(); string text = "From the attic window, snow-draped rooftops stretch into the distance, chimneys smoking softly. Icicles glitter in the pale sun. A quiet, frozen world."; doc.Rect.Inset(20, 40); doc.TextStyle.AutoTag = true; doc.TextStyle.Size = 36; doc.AddTextStyled($"<p>{text}</p>"); using var img = XImage.FromFile("../mypics/mypic.jpg", null); doc.Rect.SetRect(100, 100, img.Width / 2, img.Height / 2); var figure = doc.Tag.MakeTag("Figure"); figure.Attributes = new DictAtom(); figure.Attributes["Alt"] = new StringAtom("Snowy rooftops."); doc.Tag.Open(figure); doc.AddImageObject(img, true); doc.Tag.Close(figure.Type); doc.Save("simpletags.pdf");

styleautotag.pdf

Also see example code in: ABCpdf Tagged Text Example, XTagging Open Function.

