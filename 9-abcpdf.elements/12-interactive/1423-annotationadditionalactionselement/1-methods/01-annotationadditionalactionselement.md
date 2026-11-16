# AnnotationAdditionalActionsElement Function

## Syntax

[C#]

```csharp
<a href="../default.htm">AnnotationAdditionalActionsElement</a>()<a href="../default.htm">AnnotationAdditionalActionsElement</a>(Atom atom, IndirectObject host)<a href="../default.htm">AnnotationAdditionalActionsElement</a>(IndirectObject obj)<a href="../default.htm">AnnotationAdditionalActionsElement</a>(<a href="../../../01-base/1086-element/default.htm">Element</a> relation, CreationOptions options = CreationOptions.Default)
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

Create a new [AnnotationAdditionalActionsElement](default.md).

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

This code snippet is taken from Annotations.cs line 1584 in the Annotations example project.

[C#]

```csharp
bool isUrl = filePathOrUrl.StartsWith("http://", StringComparison.OrdinalIgnoreCase)
  || filePathOrUrl.StartsWith("https://", StringComparison.OrdinalIgnoreCase)
  || filePathOrUrl.StartsWith("rtmp://", StringComparison.OrdinalIgnoreCase);
if (contentType == null) {
  int end = -1;
  if (isUrl)
    end = filePathOrUrl.IndexOfAny(new char[] { '?', '#' });
  if (end < 0)
    end = filePathOrUrl.Length;
  contentType = GetContentType(filePathOrUrl, end);
  if (contentType == null)
    throw new NotSupportedException("Movie content type is not supported.");
}

<a href="../../1415-screenannotationelement/default.htm">ScreenAnnotationElement</a> annot = new <a href="../../1415-screenannotationelement/default.htm">ScreenAnnotationElement</a>(AnnotationElement.Object);
annot.EntrySubtype = "Screen";
annot.EntryRect = new <a href="../../../07-syntax/0017-rectangleelement/default.htm">RectangleElement</a>(ArrayAtom.FromXRect(new XRect(rect)), annot.Host);

<a href="../../../07-syntax/1110-fullfilespecificationelement/default.htm">FullFileSpecificationElement</a> fileSpec = new <a href="../../../07-syntax/1110-fullfilespecificationelement/default.htm">FullFileSpecificationElement</a>(annot);
fileSpec.EntryType = "Filespec";
if (isUrl) {
  fileSpec.EntryFS = "URL";
  fileSpec.EntryF = filePathOrUrl;
}
else {
  FileInfo fileInfo = new FileInfo(filePathOrUrl);
  fileSpec.EntryF = fileInfo.Name;
  fileSpec.EntryUF = fileInfo.Name;
  fileSpec.EntryEF = new <a href="../../../07-syntax/1111-embeddedfilesetelement/default.htm">EmbeddedFileSetElement</a>(annot);
  fileSpec.EntryEF.EntryF = EmbedFileStream(fileInfo);
}

<a href="../../../13-multimedia/1500-mediaclipdataelement/default.htm">MediaClipDataElement</a> mediaClip = new <a href="../../../13-multimedia/1500-mediaclipdataelement/default.htm">MediaClipDataElement</a>(annot, CreationOptions.Indirect);
mediaClip.EntryS = "MCD";
mediaClip.EntryP = new <a href="../../../13-multimedia/1502-mediapermissionselement/default.htm">MediaPermissionsElement</a>(annot);
mediaClip.EntryP.EntryTF = "TEMPACCESS";
mediaClip.EntryCT = contentType;
mediaClip.EntryD = fileSpec;

<a href="../../../13-multimedia/1499-mediarenditionelement/default.htm">MediaRenditionElement</a> rendition = new <a href="../../../13-multimedia/1499-mediarenditionelement/default.htm">MediaRenditionElement</a>(annot, CreationOptions.Indirect);
rendition.EntryS = "MR";
rendition.EntryC = mediaClip;

<a href="../../1436-renditionactionelement/default.htm">RenditionActionElement</a> pageVisibleAction = new <a href="../../1436-renditionactionelement/default.htm">RenditionActionElement</a>(annot, CreationOptions.Indirect);
pageVisibleAction.EntryS = "Rendition";
pageVisibleAction.EntryOP = 4;
pageVisibleAction.EntryAN = annot;
pageVisibleAction.EntryR = rendition;

annot.EntryAA = new <a href="../default.htm">AnnotationAdditionalActionsElement</a>(annot);
annot.EntryAA.EntryPV = pageVisibleAction;
<a href="../../1391-annotationelement/default.htm">AnnotationElement</a> = annot;
```

