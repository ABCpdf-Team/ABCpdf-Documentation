# NameTreeNodeElement\<T> Function

Create a new [NameTreeNodeElement](../index.md).

## Syntax

*C#*

[`NameTreeNodeElement`](../index.md)`<T>()`  
[`NameTreeNodeElement`](../index.md)`<T>(Atom atom, IndirectObject host)`  
[`NameTreeNodeElement`](../index.md)`<T>(IndirectObject obj)`  
[`NameTreeNodeElement`](../index.md)`<T>(`[`Element`](../../../01-base/1086-element/index.md)` relation, CreationOptions options = CreationOptions.Default)`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| relation | An [Element](../../../01-base/1086-element/index.md). This can be any [Element](../../../01-base/1086-element/index.md) in the Soup but ideally should be one closely associated with this [Element](../../../01-base/1086-element/index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../../../01-base/1086-element/index.md) should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [NameTreeNodeElement](../index.md).

The different constructors allow different ways of creating an [Element](../../../01-base/1086-element/index.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](../../../01-base/1086-element/index.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](../../../01-base/1086-element/index.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](../../../01-base/1086-element/index.md). For this you might use code of the following form "[CatalogElement](../../1081-catalogelement/index.md) root = new [CatalogElement](../../1081-catalogelement/index.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](../../../01-base/1086-element/index.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](../../../01-base/1086-element/index.md) and then Assigns the Atom to it. The result is a specialized [Element](../../../01-base/1086-element/index.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

- Default - Default creation options for this particular type of [Element](../../../01-base/1086-element/index.md).
- Indirect - Create [Element](../../../01-base/1086-element/index.md) containing an IndirectObject.
- Direct - Create [Element](../../../01-base/1086-element/index.md) containing an Atom.

## Example

This code snippet is taken from Annotations.cs line 1803 in the Annotations example project.

`if (mediaType != "Flash" && mediaType != "Video" && mediaType != "Sound" && mediaType != "3D")`  
`  throw new ArgumentException("Invalid media type.", "mediaType");`

[`RichMediaAnnotationElement`](../../../12-interactive/2077-richmediaannotationelement/index.md)` annot = new `[`RichMediaAnnotationElement`](../../../12-interactive/2077-richmediaannotationelement/index.md)`(AnnotationElement.Object);`  
`annot.EntrySubtype = "RichMedia";`  
`annot.EntryRect = new `[`RectangleElement`](../../0017-rectangleelement/index.md)`(ArrayAtom.FromXRect(new XRect(rect)), annot.Host);`

`string fileName;`  
[`FullFileSpecificationElement`](../../1110-fullfilespecificationelement/index.md)` fileSpec = new `[`FullFileSpecificationElement`](../../1110-fullfilespecificationelement/index.md)`(annot);`  
`fileSpec.EntryType = "Filespec";`  
`if (filePathOrUrl.StartsWith("http://", StringComparison.OrdinalIgnoreCase)`  
`  || filePathOrUrl.StartsWith("https://", StringComparison.OrdinalIgnoreCase)`  
`  || filePathOrUrl.StartsWith("rtmp://", StringComparison.OrdinalIgnoreCase)) {`  
`  fileSpec.EntryFS = "URL";`  
`  fileName = FixUrl(filePathOrUrl);`  
`}`  
`else {`  
`  FileInfo fileInfo = new FileInfo(filePathOrUrl);`  
`  fileSpec.EntryEF = new `[`EmbeddedFileSetElement`](../../1111-embeddedfilesetelement/index.md)`(annot);`  
`  fileSpec.EntryEF.EntryF = EmbedFileStream(fileInfo);`  
`  fileName = EncodeName(fileInfo.Name);`  
`}`  
`fileSpec.EntryF = fileName;`  
`fileSpec.EntryUF = fileName;`

`annot.Object.AdbeExtLevel = new int[] { 7, 3 };`  
[`RichMediaContentElement`](../../../12-interactive/2086-richmediacontentelement/index.md)` content = new `[`RichMediaContentElement`](../../../12-interactive/2086-richmediacontentelement/index.md)`(annot, CreationOptions.Indirect);`  
`content.EntryType = "RichMediaContent";`  
`content.EntryAssets = new `[`NameTreeNodeElement`](../index.md)`<`[`FileSpecificationElement`](../../0011-filespecificationelement/index.md)`>(annot, CreationOptions.Indirect);`  
`content.EntryAssets.EntryNames = new `[`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>(annot);`  
`content.EntryAssets.EntryNames.Add(new `[`Element`](../../../01-base/1086-element/index.md)`(new StringAtom(fileName), annot.Host));`  
`content.EntryAssets.EntryNames.Add(fileSpec);`

[`RichMediaConfigElement`](../../../12-interactive/2088-richmediaconfigelement/index.md)` configuration = new `[`RichMediaConfigElement`](../../../12-interactive/2088-richmediaconfigelement/index.md)`(annot, CreationOptions.Indirect);`  
`configuration.EntryType = "RichMediaConfiguration";`  
`configuration.EntrySubtype = mediaType;`  
[`RichMediaInstanceElement`](../../../12-interactive/2089-richmediainstanceelement/index.md)` instance = new `[`RichMediaInstanceElement`](../../../12-interactive/2089-richmediainstanceelement/index.md)`(annot, CreationOptions.Indirect);`  
`instance.EntryType = "RichMediaInstance";`  
`instance.EntrySubtype = mediaType;`  
`instance.EntryParams = new `[`RichMediaParamsElement`](../../../12-interactive/2090-richmediaparamselement/index.md)`(annot);`  
`instance.EntryParams.EntryType = "RichMediaParams";`  
`instance.EntryParams.EntryBinding = "Foreground";`  
`instance.EntryAsset = fileSpec;`  
`configuration.EntryInstances = new `[`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`RichMediaInstanceElement`](../../../12-interactive/2089-richmediainstanceelement/index.md)`>(annot);`  
`configuration.EntryInstances.Add(instance);`

`content.EntryConfigurations = new `[`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`RichMediaConfigElement`](../../../12-interactive/2088-richmediaconfigelement/index.md)`>(annot);`  
`content.EntryConfigurations.Add(configuration);`  
`annot.EntryRichMediaContent = content;`

[`RichMediaSettingsElement`](../../../12-interactive/2078-richmediasettingselement/index.md)` settings = new `[`RichMediaSettingsElement`](../../../12-interactive/2078-richmediasettingselement/index.md)`(annot, CreationOptions.Indirect);`  
`settings.EntryType = "RichMediaSettings";`  
`settings.EntryActivation = new `[`RichMediaActivationElement`](../../../12-interactive/2079-richmediaactivationelement/index.md)`(annot);`  
`settings.EntryActivation.EntryType = "RichMediaActivation";`  
`settings.EntryActivation.EntryConfiguration = configuration;`  
`annot.EntryRichMediaSettings = settings;`  
[`AnnotationElement`](../../../12-interactive/1391-annotationelement/index.md)` = annot;`
