# AppearanceElement Function

## Syntax

[C#]

```csharp
<a href="../default.htm">AppearanceElement</a>()<a href="../default.htm">AppearanceElement</a>(Atom atom, IndirectObject host)<a href="../default.htm">AppearanceElement</a>(IndirectObject obj)<a href="../default.htm">AppearanceElement</a>(<a href="../../../01-base/1086-element/default.htm">Element</a> relation, CreationOptions options = CreationOptions.Default)
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

Create a new [AppearanceElement](default.md).

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

This code snippet is taken from Annotations.cs line 847 in the Annotations example project.

[C#]

```csharp
<a href="../../../07-syntax/1081-catalogelement/default.htm">CatalogElement</a> cat = new <a href="../../../07-syntax/1081-catalogelement/default.htm">CatalogElement</a>(Doc.ObjectSoup.Catalog);
cat.EntryAcroForm.EntrySigFlags = 3;

// NB If you don't want your signature to print then set the /F flag to 0
int fieldID = Doc.AddObject("<</Type /Annot /Subtype /Widget /F 4 /FT /Sig /DA (/TimesRoman 0 Tf 0 g)>>");
<a href="../../1416-widgetannotationelement/default.htm">WidgetAnnotationElement</a> widget = new <a href="../../1416-widgetannotationelement/default.htm">WidgetAnnotationElement</a>(Doc.ObjectSoup[fieldID]);
<a href="../../1454-signaturefieldelement/default.htm">SignatureFieldElement</a> field = (<a href="../../1454-signaturefieldelement/default.htm">SignatureFieldElement</a>)widget.FieldElement;

FormField formField = new FormField(this, inName, field.Object.ID);
formField.Widget.Rect = new XRect(inRect);

if (mSig == null)
  Doc.Form.Refresh();
else {
  string sigName = mSig.Name;
  Doc.Form.Refresh();
  mSig = (Signature)Doc.Form[sigName];
}

if (inAppearanceText != null) {
  XRect rect = widget.EntryRect.GetRect();
  rect.Pin = XRect.Corner.TopLeft;
  rect.Width = 200; // Change this to fit the Text
  rect.Height = 60; // Change this to fit the Text
  widget.EntryRect.SetRect(rect);
  rect.Pin = XRect.Corner.BottomLeft;
  rect.Position(0, 0);

  int fontSize = 12;
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

  int fontID = Doc.AddFont("Times-Roman");
  Doc.Font = fontID;
  Doc.FontSize = fontSize;
  Doc.TextStyle.CharSpacing = 0;
  Doc.TextStyle.LineSpacing = 2;
  int textID = Doc.AddText(inAppearanceText);
  string textStream = Doc.GetInfo(textID, "Stream");
  Doc.Delete(textID);
  int l1 = textStream.IndexOf("/Fabc", 0, textStream.Length);
  int l2 = textStream.IndexOf(" ", l1, textStream.Length - l1);
  string fontResName = textStream.Substring(l1 + 1, l2 - l1 - 1);

  Doc.Delete(Doc.Page);
  Doc.Page = pageID;
  Doc.Rect.String = theRect;
  Doc.Font = theFont;
  Doc.FontSize = theFontSize;
  Doc.TextStyle.CharSpacing = charSpacing;
  Doc.TextStyle.LineSpacing = lineSpacing;

  widget.EntryAP = new <a href="../default.htm">AppearanceElement</a>(widget);
  widget.EntryAP.EntryN = MakeAppearance(rect, null, 0, fontResName, fontID, textStream);
}

return formField;
```

