# AppearanceCharacteristicsElement Function

Create a new [AppearanceCharacteristicsElement](../index.md).

## Syntax

*C#*

[`AppearanceCharacteristicsElement`](../index.md)`()`  
[`AppearanceCharacteristicsElement`](../index.md)`(Atom atom, IndirectObject host)`  
[`AppearanceCharacteristicsElement`](../index.md)`(IndirectObject obj)`  
[`AppearanceCharacteristicsElement`](../index.md)`(`[`Element`](../../../01-base/1086-element/index.md)` relation, CreationOptions options = CreationOptions.Default)`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| relation | An [Element](../../../01-base/1086-element/index.md). This can be any [Element](../../../01-base/1086-element/index.md) in the Soup but ideally should be one closely associated with this [Element](../../../01-base/1086-element/index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../../../01-base/1086-element/index.md) should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [AppearanceCharacteristicsElement](../index.md).

The different constructors allow different ways of creating an [Element](../../../01-base/1086-element/index.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](../../../01-base/1086-element/index.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](../../../01-base/1086-element/index.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](../../../01-base/1086-element/index.md). For this you might use code of the following form "[CatalogElement](../../../07-syntax/1081-catalogelement/index.md) root = new [CatalogElement](../../../07-syntax/1081-catalogelement/index.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](../../../01-base/1086-element/index.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](../../../01-base/1086-element/index.md) and then Assigns the Atom to it. The result is a specialized [Element](../../../01-base/1086-element/index.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

- Default - Default creation options for this particular type of [Element](../../../01-base/1086-element/index.md).
- Indirect - Create [Element](../../../01-base/1086-element/index.md) containing an IndirectObject.
- Direct - Create [Element](../../../01-base/1086-element/index.md) containing an Atom.

## Example

This code snippet is taken from Annotations.cs line 1190 in the Annotations example project.

[`WidgetAnnotationElement`](../../1416-widgetannotationelement/index.md)` annot = WidgetElement;`  
`annot.EntryRect = new `[`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md)`(ArrayAtom.FromXRect(new XRect(rect)), annot.Host);`  
`annot.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(annot);`  
`annot.EntryMK.EntryBG = new double[] { 1 };`  
`annot.EntryMK.EntryBC = new double[] { 0, 0, 0 };`

This code snippet is taken from Annotations.cs line 1226 in the Annotations example project.

[`WidgetAnnotationElement`](../../1416-widgetannotationelement/index.md)` annot = WidgetElement;`  
`annot.EntryRect = new `[`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md)`(ArrayAtom.FromXRect(new XRect(rect)), annot.Host);`  
`annot.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(annot);`  
`annot.EntryMK.EntryBG = new double[] { 0.752930 };`  
`annot.EntryMK.EntryCA = caption;`

This code snippet is taken from Annotations.cs line 1246 in the Annotations example project.

[`WidgetAnnotationElement`](../../1416-widgetannotationelement/index.md)` annot = WidgetElement;`  
`annot.EntryRect = new `[`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md)`(ArrayAtom.FromXRect(new XRect(rect)), annot.Host);`  
[`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`FormXObjectElement`](../../../08-graphics/1226-formxobjectelement/index.md)`> appearance = new `[`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`FormXObjectElement`](../../../08-graphics/1226-formxobjectelement/index.md)`>(annot);`  
`appearance["Yes"] = Form.YesCheckBoxAppearance;`  
`appearance["Off"] = Form.OffCheckBoxAppearance;`  
`annot.EntryAP = new `[`AppearanceElement`](../../1397-appearanceelement/index.md)`(annot);`  
`annot.EntryAP.EntryN = appearance;`  
`annot.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(annot);`  
`annot.EntryMK.EntryCA = Form.YesCheckBoxCharacter;`  
`annot.EntryAS = selected ? "Yes" : "Off";`

This code snippet is taken from Annotations.cs line 1271 in the Annotations example project.

[`WidgetAnnotationElement`](../../1416-widgetannotationelement/index.md)` annot = WidgetElement;`  
`annot.EntrySubtype = "Widget";`  
`annot.EntryRect = new `[`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md)`(ArrayAtom.FromXRect(new XRect(rect)), annot.Host);`  
`annot.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(annot);`  
`annot.EntryMK.EntryBC = new double[] { 0 };`  
`annot.EntryMK.EntryBG = new double[] { 1 };`  
`annot.EntryAS = selected ? inName : "Off";`  
[`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`FormXObjectElement`](../../../08-graphics/1226-formxobjectelement/index.md)`> appearance = new `[`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`FormXObjectElement`](../../../08-graphics/1226-formxobjectelement/index.md)`>(annot);`  
`appearance[inName] = Form.YesRadioBtnAppearance;`  
`appearance["Off"] = Form.OffRadioBtnAppearance;`  
`annot.EntryAP = new `[`AppearanceElement`](../../1397-appearanceelement/index.md)`(annot);`  
`annot.EntryAP.EntryN = appearance;`

This code snippet is taken from Test.cs line 92 in the Annotations example project.

`theDoc.Font = theDoc.AddFont("Helvetica");`  
`theDoc.FontSize = 36;`

`EmbeddedFileTree fileTree = new EmbeddedFileTree(theDoc);`  
`fileTree.EmbedFile("MyFile1", Server.MapPath("ABCpdf.swf"), "attachment without annotation");`  
`theDoc.SetInfo(theDoc.Root, "/PageMode:Name", "UseAttachments");`

`// Create interactive form`  
`InteractiveForm form = new InteractiveForm(theDoc);`  
`theDoc.Pos.X = 40;`  
`theDoc.Pos.Y = theDoc.MediaBox.Top - 40;`  
`theDoc.AddText("Interactive Form annotations");`

`// Radio buttons`  
`form.AddRadioButtonGroup(new string[2] { "40 610 80 650", "40 660 80 700" }, "RadioGroupField", 0);`  
`theDoc.Pos.String = "100 696";`  
`theDoc.AddText("RadioButton 1");`  
`theDoc.Pos.String = "100 646";`  
`theDoc.AddText("RadioButton 2");`

`// Text fields`  
`FormField text = form.AddTextField("40 530 300 580", "TextField1", "Hello World!");`  
`text.FieldElement.EntryDA = "/TimesRoman 36 Tf 0 0 1 rg";`  
`text.Widget.WidgetElement.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(text.FieldElement);`  
`text.Widget.WidgetElement.EntryMK.EntryBC = new double[] { 0, 0, 0 };`  
`text.Widget.WidgetElement.EntryMK.EntryBG = new double[] { 220.0 / 255.0, 220.0 / 255.0, 220.0 / 255.0 };`  
`text.FieldElement.EntryQ = 0; // Left alignment`

`text = form.AddTextField("40 460 300 510", "TextField2", "Text Field");`  
`text.Widget.WidgetElement.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(text.FieldElement);`  
`text.Widget.WidgetElement.EntryMK.EntryBC = new double[] { 0, 0, 0 };`  
`text.FieldElement.EntryDA = "/TimesRoman 36 Tf 0 0 1 rg";`  
`text.FieldElement.EntryQ = 0; // Left alignment`  
`text.FieldElement.EntryFf |= (int)Field.FieldFlags.Password;`

`text = form.AddTextField("320 460 370 580", "TextField3", "Vertical");`  
`text.Widget.WidgetElement.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(text.FieldElement);`  
`text.Widget.WidgetElement.EntryMK.EntryBC = new double[] { 0, 0, 0 };`  
`text.FieldElement.EntryDA = "/TimesRoman 36 Tf 0 0 0 rg";`  
`text.Widget.WidgetElement.EntryMK.EntryR = 90; // Rotation`

`// Combobox field`  
`FormField combo = form.AddChoiceField("ComboBox", "40 390 300 440", "ComboBoxField");`  
`combo.FieldElement.EntryDA = "/TimesRoman 24 Tf 0 0 0 rg";`  
`combo.SetOptions(new string[] { "ComboBox Item 1", "ComboBox Item 2", "ComboBox Item 3" }, null);`

`// Listbox field`  
`FormField listbox = form.AddChoiceField("ListBox", "40 280 300 370", "ListBoxField");`  
`listbox.FieldElement.EntryDA = "/TimesRoman 24 Tf 0 0 0 rg";`  
`listbox.SetOptions(new string[] { "ListBox Item 1", "ListBox Item 2", "ListBox Item 3" }, null);`

`// Checkbox field`  
`form.AddCheckbox("40 220 80 260", "CheckBoxField", true);`  
`theDoc.Pos.String = "100 256";`  
`theDoc.AddText("Check Box");`

`// Pushbutton field`  
`FormField button = form.AddButton("40 160 200 200", "ButtonField", "Button");`  
`button.Widget.WidgetElement.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(text.FieldElement);`  
`button.Widget.WidgetElement.EntryMK.EntryBC = new double[] { 0, 0, 0 };`  
`button.Widget.BorderStyle = "Beveled";`

`// Markup annotations`  
`theDoc.Page = theDoc.AddPage();`  
`theDoc.Pos.X = 40;`  
`theDoc.Pos.Y = theDoc.MediaBox.Top - 40;`  
`theDoc.AddText("Markup annotations");`

`SquareAnnotation square = new SquareAnnotation(form, "40 560 300 670", "255 0 0", "0 0 255");`  
`square.BorderWidth = 8;`

`LineAnnotation line = new LineAnnotation(form, "100 565 220 665", "255 0 0");`  
`line.BorderWidth = 12;`  
`line.RichTextCaption = "<span style= \"font-size:36pt; color:#FF0000\">Line</span>";`

`theDoc.FontSize = 24;`  
`theDoc.Pos.String = "400 670";`  
`int id = theDoc.AddText("Underline");`  
`TextMarkupAnnotation markup = new TextMarkupAnnotation(form, id, "Underline", "0 255 0");`

`theDoc.Pos.String = "400 640";`  
`id = theDoc.AddText("Highlight");`  
`markup = new TextMarkupAnnotation(form, id, "Highlight", "255 255 0");`

`theDoc.Pos.String = "400 610";`  
`id = theDoc.AddText("StrikeOut");`  
`markup = new TextMarkupAnnotation(form, id, "StrikeOut", "255 0 0");`

`theDoc.Pos.String = "400 580";`  
`id = theDoc.AddText("Squiggly");`  
`markup = new TextMarkupAnnotation(form, id, "Squiggly", "0 0 255");`

`CircleAnnotation circle = new CircleAnnotation(form, "80 320 285 525", "255 255 0", "255 128 0");`  
`circle.BorderWidth = 20;`  
`circle.BorderStyle = "Dashed";`  
`circle.BorderDash = "[3 2]";`

`LineAnnotation arrowLine = new LineAnnotation(form, "385 330 540 520", "255 0 0");`  
`arrowLine.LineEndingsStyle = "ClosedArrow ClosedArrow";`  
`arrowLine.BorderWidth = 6;`  
`arrowLine.FillColor = "255 0 0";`

`PolygonAnnotation polygon = new PolygonAnnotation(form, "100 70 50 120 50 220 100 270 200 270 250 220 250 120 200 70", "255 0 0", "0 255 0");`  
`PolygonAnnotation cloudyPolygon = new PolygonAnnotation(form, "400 70 350 120 350 220 400 270 500 270 550 220 550 120 500 70", "255 0 0", "64 85 255");`  
`cloudyPolygon.CloudyEffect = 1;`

`// Movie annotations`  
`// WMV is courtesy of NASA - http://www.nasa.gov/wmv/30873main_cardiovascular_300.wmv`  
`theDoc.Page = theDoc.AddPage();`  
`theDoc.Pos.X = 40;`  
`theDoc.Pos.Y = theDoc.MediaBox.Top - 40;`  
`theDoc.AddText("Multimedia features");`

`theDoc.FontSize = 24;`

`theDoc.Pos.String = "40 690";`  
`theDoc.AddText("Flash movie:");`  
`MovieAnnotation movie1 = new MovieAnnotation(form, "40 420 300 650", Server.MapPath("ABCpdf.swf"));`

`theDoc.Pos.String = "312 690";`  
`theDoc.AddText("Flash rich media:");`  
`RichMediaAnnotation media1 = new RichMediaAnnotation(form, "312 420 572 650", Server.MapPath("ABCpdf.swf"), "Flash");`

`theDoc.Pos.String = "40 400";`  
`theDoc.AddText("Video File:");`  
`MovieAnnotation movie2 = new MovieAnnotation(form, "80 40 520 360", Server.MapPath("video.wmv"));`

`theDoc.Page = theDoc.AddPage();`  
`theDoc.FontSize = 36;`  
`theDoc.Pos.X = 40;`  
`theDoc.Pos.Y = theDoc.MediaBox.Top - 40;`  
`theDoc.AddText("Other types of annotations");`

`// Sticky note annotation`  
`theDoc.FontSize = 24;`  
`theDoc.Pos.String = "40 680";`  
`theDoc.AddText("Text annotation");`  
`TextAnnotation textAnnotation = new TextAnnotation(form, "340 660 360 680", "550 650 600 750", "6 sets of 13 pages. Trim to 5X7.");`

`// File attachment annotation`  
`theDoc.Pos.String = "40 640";`  
`theDoc.AddText("File Attachment annotation");`  
`FileAttachmentAnnotation fileAttachment = new FileAttachmentAnnotation(form, "340 620 360 640", Server.MapPath("video.WMV"));`

`// StampAnnotations`  
`theDoc.Pos.String = "40 600";`  
`theDoc.AddText("Stamp annotations");`  
`StampAnnotation stamp1 = new StampAnnotation(form, "340 560 540 600", "DRAFT", "0 0 128");`  
`StampAnnotation stamp2 = new StampAnnotation(form, "340 505 540 545", "FINAL", " 0 128 0");`  
`StampAnnotation stamp3 = new StampAnnotation(form, "340 450 540 490", "NOT APPROVED", "128 0 0");`

`theDoc.PageNumber = 1;`

`// Signature fields`  
`// Add signature fields last so that entire document is signed`

`// Note: For maximum portability, it is recommended`  
`// that you create all the signature fields before`  
`// signing any one of them (as is demonstrated below).`  
`//`  
`// The reason is that adding a signature field`  
`// changes the document. Although this is legal, not all`  
`// versions of Acrobat are happy with all types of updates.`  
`// As such, they may report existing valid signatures to be`  
`// invalid.`  
`//`  
`// In the past, the "SigFlags" entry allowed contents to be`  
`// appended to signed documents using incremental updates.`  
`// However, the entry's treatment seems to have changed in`  
`// Adobe Reader X. For example, Adobe Reader X will`  
``// report the signatures in `SignedThenAppended.pdf` to``  
`// be invalid whereas Acrobat 8 will report`  
`// "signatures are valid, but document has been changed`  
`// since it was signed." This is a document created using`  
`// Acrobat Professional 8.`

`// We add the first signature field unsigned`  
`form.AddSignature("40 100 240 150", "Signature1");`

`// And the second signature field unsigned (to be signed`  
`// below)`  
`form.AddSignature("340 100 540 150", "Signature2");`  
`X509Certificate2 userCert = PromptUserForCert();`  
`if (userCert != null) {`  
`  Signature sig2 = (Signature)theDoc.Form.Fields["Signature2"];`  
`  sig2.Signer = DisplayNameFromCert(userCert);`

`  // We need not call sig2.Commit() as sig2 is not signed yet.`  
`  //sig2.Commit();`  
`}`

`// We can add the last signature field signed.`  
`// Note: Certifying the document makes all but the last signed`  
`// signature invalid, especially after clicking on the signatures.`  
`form.Certify = true;`  
`form.ShowSignatureValidity = true;`  
`form.AddSignature("340 160 540 220", "Signature3",`  
`  Server.MapPath("JohnSmith.pfx"), "1234", "I am the author",`  
`  "New York", "Digitally signed by {0}\nReason: {2}\n" +`  
`  "Location: {3}\nDate: {1:yyyy.MM.dd}", false);`  
`form.Certify = false;`

`// Go back and sign the second signature placeholder`  
`// if interactive user has supplied the signing key`  
`if (userCert != null) {`  
`  // We are about to sign a signature outside the`  
`  // InteractiveForm class. Commit the previous signature.`  
`  form.CommitSignature();`

`  // We need to obtain the field afresh because`  
`  // Signature.Commit invalidates all IndirectObject's`  
`  Signature sig2 = (Signature)theDoc.Form.Fields["Signature2"];`  
`  sig2.Sign(userCert, true);`  
`  // This is the last signature so we need not commit it`  
`  // using sig2.Commit();`  
`}`

`theDoc.SaveOptions.Linearize = false;`  
`theDoc.SaveOptions.Remap = false;`  
`theDoc.Save(outputFile);`

This code snippet is taken from Test.cs line 328 in the Annotations example project.

`theDoc.Read(inputFile);`  
`theDoc.Font = theDoc.AddFont("Helvetica");`  
`theDoc.FontSize = 36;`  
`// Create interactive form`  
`InteractiveForm form = new InteractiveForm(theDoc);`  
`// Add Radio buttons`  
`form.AddRadioButtonGroup(new string[2] { "40 610 80 650", "40 660 80 700" }, "RadioGroupField", 0);`  
`theDoc.Pos.String = "100 696";`  
`theDoc.AddText("RadioButton 1");`  
`theDoc.Pos.String = "100 646";`  
`theDoc.AddText("RadioButton 2");`  
`// Fields cannot have the same name. If we are going to add duplicate field name then later`  
`// we will need to rationalize the document structure so that the two fields will synchronize.`  
`string textFieldName = "TextField1";`  
`bool fieldAlreadyExists = theDoc.Form[textFieldName] != null;`  
`// Add Text field`  
`FormField text = form.AddTextField("40 530 300 580", textFieldName, "Hello World!");`  
`text.FieldElement.EntryDA = "/TimesRoman 36 Tf 0 0 1 rg";`  
`text.Widget.WidgetElement.EntryMK = new `[`AppearanceCharacteristicsElement`](../index.md)`(text.FieldElement);`  
`text.Widget.WidgetElement.EntryMK.EntryBC = new double[] { 0, 0, 0 };`  
`text.Widget.WidgetElement.EntryMK.EntryBG = new double[] { 220.0 / 255.0, 220.0 / 255.0, 220.0 / 255.0 };`  
`text.FieldElement.EntryQ = 0; // Left alignment`  
`// Here we need rationalize if necessary`  
`if (fieldAlreadyExists)`  
`  form.MakeFieldIntoGroup(text, true);`  
`// Add Synchronized Text Fields`  
`List<WidgetAnnotation> kids = new List<WidgetAnnotation>();`  
`kids.Add(form.AddTextField("40 230 300 280", null, null).Widget);`  
`kids.Add(form.AddTextField("40 170 300 220", null, null).Widget);`  
`FormField textGroup = form.AddGroupField(kids, "Group Field", "Synchronized");`  
`// make sure form is up to date`  
`theDoc.Form.Refresh();`  
`// Delete Pre-Existing Fields (ones that appear to relate to text)`  
`bool fieldsDeleted = false;`  
`string[] names = theDoc.Form.GetFieldNames();`  
`foreach (string name in names) {`  
`  if (name.Contains("Text")) {`  
`    Field field = theDoc.Form[name];`  
`    form.DeleteField(field);`  
`    fieldsDeleted = true;`  
`  }`  
`}`  
`if (fieldsDeleted)`  
`  theDoc.Form.Refresh();`  
`// Move Pre-Existing Fields (ones that appear to relate to names)`  
`foreach (string name in names) {`  
`  if (name.Contains("Name")) {`  
`    Field field = theDoc.Form[name];`  
`    List<Annotation> annots = form.GetAnnotations(field);`  
`    foreach (Annotation annot in annots) {`  
`      XRect rect = annot.Rect;`  
`      rect.Move(0, -200); // move down`  
`      rect.Magnify(2, 2); // amd make bigger`  
`      annot.Rect = rect;`  
`    }`  
`  }`  
`}`  
`EBUG`  
`// these options make PDF files more diff-able`  
`theDoc.SaveOptions.Linearize = false;`  
`theDoc.SaveOptions.Remap = false;`  
`f`  
`theDoc.Save(outputFile);`
