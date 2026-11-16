# RichMediaParamsElement Function

## Syntax

[C#]

```csharp
<a href="../default.htm">RichMediaParamsElement</a>()<a href="../default.htm">RichMediaParamsElement</a>(Atom atom, IndirectObject host)<a href="../default.htm">RichMediaParamsElement</a>(IndirectObject obj)<a href="../default.htm">RichMediaParamsElement</a>(<a href="../../../01-base/1086-element/default.htm">Element</a> relation, CreationOptions options = CreationOptions.Default)
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

Create a new [RichMediaParamsElement](default.md).

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

This code snippet is taken from Annotations.cs line 1803 in the Annotations example project.

[C#]

```csharp
if (mediaType != "Flash" && mediaType != "Video" && mediaType != "Sound" && mediaType != "3D")
  throw new ArgumentException("Invalid media type.", "mediaType");

<a href="../../2077-richmediaannotationelement/default.htm">RichMediaAnnotationElement</a> annot = new <a href="../../2077-richmediaannotationelement/default.htm">RichMediaAnnotationElement</a>(AnnotationElement.Object);
annot.EntrySubtype = "RichMedia";
annot.EntryRect = new <a href="../../../07-syntax/0017-rectangleelement/default.htm">RectangleElement</a>(ArrayAtom.FromXRect(new XRect(rect)), annot.Host);

string fileName;
<a href="../../../07-syntax/1110-fullfilespecificationelement/default.htm">FullFileSpecificationElement</a> fileSpec = new <a href="../../../07-syntax/1110-fullfilespecificationelement/default.htm">FullFileSpecificationElement</a>(annot);
fileSpec.EntryType = "Filespec";
if (filePathOrUrl.StartsWith("http://", StringComparison.OrdinalIgnoreCase)
  || filePathOrUrl.StartsWith("https://", StringComparison.OrdinalIgnoreCase)
  || filePathOrUrl.StartsWith("rtmp://", StringComparison.OrdinalIgnoreCase)) {
  fileSpec.EntryFS = "URL";
  fileName = FixUrl(filePathOrUrl);
}
else {
  FileInfo fileInfo = new FileInfo(filePathOrUrl);
  fileSpec.EntryEF = new <a href="../../../07-syntax/1111-embeddedfilesetelement/default.htm">EmbeddedFileSetElement</a>(annot);
  fileSpec.EntryEF.EntryF = EmbedFileStream(fileInfo);
  fileName = EncodeName(fileInfo.Name);
}
fileSpec.EntryF = fileName;
fileSpec.EntryUF = fileName;

annot.Object.AdbeExtLevel = new int[] { 7, 3 };
<a href="../../2086-richmediacontentelement/default.htm">RichMediaContentElement</a> content = new <a href="../../2086-richmediacontentelement/default.htm">RichMediaContentElement</a>(annot, CreationOptions.Indirect);
content.EntryType = "RichMediaContent";
content.EntryAssets = new <a href="../../../07-syntax/1097-nametreenodeelement_t_/default.htm">NameTreeNodeElement</a><<a href="../../../07-syntax/0011-filespecificationelement/default.htm">FileSpecificationElement</a>>(annot, CreationOptions.Indirect);
content.EntryAssets.EntryNames = new <a href="../../../01-base/0001-arrayelement_t_/default.htm">ArrayElement</a><<a href="../../../01-base/1086-element/default.htm">Element</a>>(annot);
content.EntryAssets.EntryNames.Add(new <a href="../../../01-base/1086-element/default.htm">Element</a>(new StringAtom(fileName), annot.Host));
content.EntryAssets.EntryNames.Add(fileSpec);

<a href="../../2088-richmediaconfigelement/default.htm">RichMediaConfigElement</a> configuration = new <a href="../../2088-richmediaconfigelement/default.htm">RichMediaConfigElement</a>(annot, CreationOptions.Indirect);
configuration.EntryType = "RichMediaConfiguration";
configuration.EntrySubtype = mediaType;
<a href="../../2089-richmediainstanceelement/default.htm">RichMediaInstanceElement</a> instance = new <a href="../../2089-richmediainstanceelement/default.htm">RichMediaInstanceElement</a>(annot, CreationOptions.Indirect);
instance.EntryType = "RichMediaInstance";
instance.EntrySubtype = mediaType;
instance.EntryParams = new <a href="../default.htm">RichMediaParamsElement</a>(annot);
instance.EntryParams.EntryType = "RichMediaParams";
instance.EntryParams.EntryBinding = "Foreground";
instance.EntryAsset = fileSpec;
configuration.EntryInstances = new <a href="../../../01-base/0001-arrayelement_t_/default.htm">ArrayElement</a><<a href="../../2089-richmediainstanceelement/default.htm">RichMediaInstanceElement</a>>(annot);
configuration.EntryInstances.Add(instance);

content.EntryConfigurations = new <a href="../../../01-base/0001-arrayelement_t_/default.htm">ArrayElement</a><<a href="../../2088-richmediaconfigelement/default.htm">RichMediaConfigElement</a>>(annot);
content.EntryConfigurations.Add(configuration);
annot.EntryRichMediaContent = content;

<a href="../../2078-richmediasettingselement/default.htm">RichMediaSettingsElement</a> settings = new <a href="../../2078-richmediasettingselement/default.htm">RichMediaSettingsElement</a>(annot, CreationOptions.Indirect);
settings.EntryType = "RichMediaSettings";
settings.EntryActivation = new <a href="../../2079-richmediaactivationelement/default.htm">RichMediaActivationElement</a>(annot);
settings.EntryActivation.EntryType = "RichMediaActivation";
settings.EntryActivation.EntryConfiguration = configuration;
annot.EntryRichMediaSettings = settings;
<a href="../../1391-annotationelement/default.htm">AnnotationElement</a> = annot;
```

