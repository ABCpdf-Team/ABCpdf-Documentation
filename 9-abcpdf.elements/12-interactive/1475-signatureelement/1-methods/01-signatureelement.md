# SignatureElement Function

## Syntax

[C#]

```csharp
<a href="../default.htm">SignatureElement</a>()<a href="../default.htm">SignatureElement</a>(Atom atom, IndirectObject host)<a href="../default.htm">SignatureElement</a>(IndirectObject obj)<a href="../default.htm">SignatureElement</a>(<a href="../../../01-base/1086-element/default.htm">Element</a> relation, CreationOptions options = CreationOptions.Default)
```

## Params

| **Name** | **Description** |
| --- | --- |
| atom | The Atom to be assigned to this Element. |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this Element. |
| relation | An Element. This can be any Element in the Soup but ideally should be one closely associated with this Element. |
| options | Options related to creation. For example this allows you to determine whether the Element should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [SignatureElement](default.md).

The different constructors allow different ways of creating an [Element](01-base/1086-element/default.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](01-base/1086-element/default.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](01-base/1086-element/default.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](01-base/1086-element/default.md). For this you might use code of the following form "[CatalogElement](07-syntax/1081-catalogelement/default.md) root = new [CatalogElement](07-syntax/1081-catalogelement/default.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](01-base/1086-element/default.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](01-base/1086-element/default.md) and then Assigns the Atom to it. The result is a specialized [Element](01-base/1086-element/default.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

* Default - Default creation options for this particular type of Element.
* Indirect - Create Element containing an IndirectObject.
* Direct - Create Element containing an Atom.

## Example

This code snippet is taken from Annotations.cs line 666 in the Annotations example project.

[C#]

```csharp
CommitSignature();

<a href="../../../07-syntax/1081-catalogelement/default.htm">CatalogElement</a> cat = new <a href="../../../07-syntax/1081-catalogelement/default.htm">CatalogElement</a>(Doc.ObjectSoup.Catalog);
cat.EntryAcroForm.EntrySigFlags = 3;

// NB If you don't want your signature to print then set the /F flag to 0
int fieldID = Doc.AddObject("<</Type /Annot /Subtype /Widget /F 4 /FT /Sig /DA (/TimesRoman 0 Tf 0 g)>>");
<a href="../../1416-widgetannotationelement/default.htm">WidgetAnnotationElement</a> widget = new <a href="../../1416-widgetannotationelement/default.htm">WidgetAnnotationElement</a>(Doc.ObjectSoup[fieldID]);
<a href="../../1454-signaturefieldelement/default.htm">SignatureFieldElement</a> field = (<a href="../../1454-signaturefieldelement/default.htm">SignatureFieldElement</a>)widget.FieldElement;
int sigDictID = Doc.AddObject("<</Type /Sig /Filter /Adobe.PPKLite /SubFilter /adbe.pkcs7.detached>>");
<a href="../default.htm">SignatureElement</a> signature = new <a href="../default.htm">SignatureElement</a>(Doc.ObjectSoup[sigDictID]);
if (inLocked) {
  IndirectObject io = IndirectObject.FromString("<< /Type /SigFieldLock /Action /All /P 1 >>");
  field.Host.Soup.Add(io);
  <a href="../../1455-signaturefieldlockelement/default.htm">SignatureFieldLockElement</a> sigFieldLock = new <a href="../../1455-signaturefieldlockelement/default.htm">SignatureFieldLockElement</a>(io);
  field.EntryLock = sigFieldLock;
  field.Object.Version = 5; // PDF 1.5
}
field.EntryV = signature;
FormField formField = new FormField(this, inName, field.Object.ID);
formField.Widget.Rect = new XRect(inRect);

Doc.Form.Refresh();
mSig = (Signature)Doc.Form[inName];
sign(mSig);
if (inReason != null)
  signature.EntryReason = inReason;
if (inLocation != null)
  signature.EntryLocation = inLocation;
if (mSig.Signer != null)
  signature.EntryName = mSig.Signer;

if (mCertify) {
  // make it PDF 1.6, see the second point under "Validating MDP signatures" in the PDF reference
  signature.Object.Version = 6;
  // make signature MDP
  int id = Doc.AddObject("<</Type /SigRef /TransformMethod /DocMDP /TransformParams <</Type /TransformParams /P 2 /V /1.2>>>>");
  <a href="../../1477-signaturereferenceelement/default.htm">SignatureReferenceElement</a> sigRef = new <a href="../../1477-signaturereferenceelement/default.htm">SignatureReferenceElement</a>(Doc.ObjectSoup[id]);
  signature.EntryReference = new <a href="../../../01-base/0001-arrayelement_t_/default.htm">ArrayElement</a><<a href="../../1477-signaturereferenceelement/default.htm">SignatureReferenceElement</a>>(signature);
  signature.EntryReference.Add(sigRef);
  if (cat.EntryPerms == null)
    cat.EntryPerms = new <a href="../../1485-permissionselement/default.htm">PermissionsElement</a>(cat);
  cat.EntryPerms.EntryDocMDP = signature;
}

if ((inAppearanceTextFormat != null) || (inImage != null)) {
  XRect rect = widget.EntryRect.GetRect();
  rect.Pin = XRect.Corner.TopLeft;
  if (inAppearanceTextFormat != null) {
    rect.Width = 200; // Change this to fit the Text
    rect.Height = 60; // Change this to fit the Text
  }
  widget.EntryRect.SetRect(rect);
  rect = rect.Clone();
  rect.Pin = XRect.Corner.BottomLeft;
  rect.Position(0, 0);
  if (inImage != null) {
    XRect imgRect = XRect.FromSides(0, 0, inImage.Width, inImage.Height);
    imgRect.FitIn(rect, ContentAlign.Center, ContentScaleMode.ExactFit);
    rect.String = imgRect.String;
  }

  double validityMessageHeight = 0;
  int fontSize = 12;
  if (mShowSignatureValidity) {
    validityMessageHeight = Math.Min(0.3 * rect.Height, 0.1 * rect.Width);
    fontSize = 8;
  }

  string theRect = Doc.Rect.String;
  int theFont = Doc.Font;
  int theFontSize = Doc.FontSize;
  double charSpacing = Doc.TextStyle.CharSpacing;
  double lineSpacing = Doc.TextStyle.LineSpacing;
  int pageID = Doc.Page;

  // Use a detached page to avoid changes to the current page
  // or to the page tree for a new page
  Doc.Page = Doc.AddObject("<</Type /Page /MediaBox [" + rect.String + "] >>");
  Doc.Rect.String = rect.String;

  StringBuilder apStream = new StringBuilder();

  string imageResName = null;
  int imageID = 0;
  if (inImage != null) {
    int imageLayerID = Doc.AddImage(inImage);
    string imageStream = Doc.GetInfo(imageLayerID, "Stream");
    ImageLayer il = (ImageLayer)Doc.ObjectSoup[imageLayerID];
    imageID = il.PixMap.ID;
    Doc.Delete(imageLayerID);
    int l1 = imageStream.IndexOf("/Iabc", 0, imageStream.Length);
    int l2 = imageStream.IndexOf(" ", l1, imageStream.Length - l1);
    imageResName = imageStream.Substring(l1 + 1, l2 - l1 - 1);
    apStream.Append(imageStream);
    apStream.AppendLine();
  }

  string fontResName = null;
  int fontID = 0;
  if (inAppearanceTextFormat != null) {
    if (validityMessageHeight != 0)
      Doc.Rect.Top -= validityMessageHeight;
    fontID = Doc.AddFont("Times-Roman");
    Doc.Font = fontID;
    Doc.FontSize = fontSize;
    Doc.TextStyle.CharSpacing = 0;
    Doc.TextStyle.LineSpacing = 2;
    string text = string.Format(inAppearanceTextFormat, mSig.Signer, mSig.SigningUtcTime, inReason, inLocation);
    int textID = Doc.AddText(text);
    string textStream = Doc.GetInfo(textID, "Stream");
    Doc.Delete(textID);
    int l1 = textStream.IndexOf("/Fabc", 0, textStream.Length);
    int l2 = textStream.IndexOf(" ", l1, textStream.Length - l1);
    fontResName = textStream.Substring(l1 + 1, l2 - l1 - 1);
    apStream.Append(textStream);
    apStream.AppendLine();
  }

  Doc.Delete(Doc.Page);
  Doc.Page = pageID;
  Doc.Rect.String = theRect;
  Doc.Font = theFont;
  Doc.FontSize = theFontSize;
  Doc.TextStyle.CharSpacing = charSpacing;
  Doc.TextStyle.LineSpacing = lineSpacing;

  <a href="../../../08-graphics/1226-formxobjectelement/default.htm">FormXObjectElement</a> appearance = MakeAppearance(rect, imageResName, imageID, fontResName, fontID, apStream.ToString());

  if (mShowSignatureValidity) {
    if (mBlankAppearance == null)
      mBlankAppearance = MakeAppearance(XRect.FromSides(0, 0, 100, 100), null, 0, null, 0, "");

    XRect clone = rect.Clone();
    clone.Bottom = rect.Top - validityMessageHeight;
    <a href="../../../08-graphics/1226-formxobjectelement/default.htm">FormXObjectElement</a> validityAppearance = MakeAppearance(clone, null, 0, fontResName, fontID, "");

    double side = 0.9 * Math.Min(rect.Width, rect.Height);
    string contents = string.Format(NumberFormatInfo.InvariantInfo,
      "q 1 0 0 1 0 0 cm /n0 Do Q"
      + "\r\nq {0:0.#####} 0 0 {0:0.#####} {1:0.#####} {2:0.#####} cm /n1 Do Q"
      + "\r\nq 1 0 0 1 0 0 cm /n2 Do Q"
      + "\r\nq {0:0.#####} 0 0 {0:0.#####} {1:0.#####} {2:0.#####} cm /n3 Do Q"
      + "\r\nq 1 0 0 1 0 0 cm /n4 Do Q"
      + "\r\n", side / 100, (rect.Width - side) / 2, (rect.Height - side) / 2);
    <a href="../../../08-graphics/1226-formxobjectelement/default.htm">FormXObjectElement</a> frmElement = MakeAppearance(rect, "", 0, null, 0, contents);
    frmElement.EntryResources.EntryXObject.Add("n0", mBlankAppearance);
    frmElement.EntryResources.EntryXObject.Add("n1", mBlankAppearance);
    frmElement.EntryResources.EntryXObject.Add("n2", appearance);
    frmElement.EntryResources.EntryXObject.Add("n3", mBlankAppearance);
    frmElement.EntryResources.EntryXObject.Add("n4", validityAppearance);

    appearance = MakeAppearance(rect, "", 0, null, 0, "q 1 0 0 1 0 0 cm /FRM Do Q\r\n");
    appearance.EntryResources.EntryXObject.Add("FRM", frmElement);
  }

  widget.EntryAP = new <a href="../../1397-appearanceelement/default.htm">AppearanceElement</a>(widget);
  widget.EntryAP.EntryN = appearance;
}

return formField;
```

