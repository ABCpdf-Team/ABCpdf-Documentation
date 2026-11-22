# MediaRenditionElement Function

Create a new [MediaRenditionElement](../index.md).

## Syntax

*C#*

[`MediaRenditionElement`](../index.md)`()`  
[`MediaRenditionElement`](../index.md)`(Atom atom, IndirectObject host)`  
[`MediaRenditionElement`](../index.md)`(IndirectObject obj)`  
[`MediaRenditionElement`](../index.md)`(`[`Element`](../../../01-base/1086-element/index.md)` relation, CreationOptions options = CreationOptions.Default)`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| relation | An [Element](../../../01-base/1086-element/index.md). This can be any [Element](../../../01-base/1086-element/index.md) in the Soup but ideally should be one closely associated with this [Element](../../../01-base/1086-element/index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../../../01-base/1086-element/index.md) should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [MediaRenditionElement](../index.md).

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

This code snippet is taken from Annotations.cs line 1584 in the Annotations example project.

`bool isUrl = filePathOrUrl.StartsWith("http://", StringComparison.OrdinalIgnoreCase)`  
`  || filePathOrUrl.StartsWith("https://", StringComparison.OrdinalIgnoreCase)`  
`  || filePathOrUrl.StartsWith("rtmp://", StringComparison.OrdinalIgnoreCase);`  
`if (contentType == null) {`  
`  int end = -1;`  
`  if (isUrl)`  
`    end = filePathOrUrl.IndexOfAny(new char[] { '?', '#' });`  
`  if (end < 0)`  
`    end = filePathOrUrl.Length;`  
`  contentType = GetContentType(filePathOrUrl, end);`  
`  if (contentType == null)`  
`    throw new NotSupportedException("Movie content type is not supported.");`  
`}`

[`ScreenAnnotationElement`](../../../12-interactive/1415-screenannotationelement/index.md)` annot = new `[`ScreenAnnotationElement`](../../../12-interactive/1415-screenannotationelement/index.md)`(AnnotationElement.Object);`  
`annot.EntrySubtype = "Screen";`  
`annot.EntryRect = new `[`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md)`(ArrayAtom.FromXRect(new XRect(rect)), annot.Host);`

[`FullFileSpecificationElement`](../../../07-syntax/1110-fullfilespecificationelement/index.md)` fileSpec = new `[`FullFileSpecificationElement`](../../../07-syntax/1110-fullfilespecificationelement/index.md)`(annot);`  
`fileSpec.EntryType = "Filespec";`  
`if (isUrl) {`  
`  fileSpec.EntryFS = "URL";`  
`  fileSpec.EntryF = filePathOrUrl;`  
`}`  
`else {`  
`  FileInfo fileInfo = new FileInfo(filePathOrUrl);`  
`  fileSpec.EntryF = fileInfo.Name;`  
`  fileSpec.EntryUF = fileInfo.Name;`  
`  fileSpec.EntryEF = new `[`EmbeddedFileSetElement`](../../../07-syntax/1111-embeddedfilesetelement/index.md)`(annot);`  
`  fileSpec.EntryEF.EntryF = EmbedFileStream(fileInfo);`  
`}`

[`MediaClipDataElement`](../../1500-mediaclipdataelement/index.md)` mediaClip = new `[`MediaClipDataElement`](../../1500-mediaclipdataelement/index.md)`(annot, CreationOptions.Indirect);`  
`mediaClip.EntryS = "MCD";`  
`mediaClip.EntryP = new `[`MediaPermissionsElement`](../../1502-mediapermissionselement/index.md)`(annot);`  
`mediaClip.EntryP.EntryTF = "TEMPACCESS";`  
`mediaClip.EntryCT = contentType;`  
`mediaClip.EntryD = fileSpec;`

[`MediaRenditionElement`](../index.md)` rendition = new `[`MediaRenditionElement`](../index.md)`(annot, CreationOptions.Indirect);`  
`rendition.EntryS = "MR";`  
`rendition.EntryC = mediaClip;`

[`RenditionActionElement`](../../../12-interactive/1436-renditionactionelement/index.md)` pageVisibleAction = new `[`RenditionActionElement`](../../../12-interactive/1436-renditionactionelement/index.md)`(annot, CreationOptions.Indirect);`  
`pageVisibleAction.EntryS = "Rendition";`  
`pageVisibleAction.EntryOP = 4;`  
`pageVisibleAction.EntryAN = annot;`  
`pageVisibleAction.EntryR = rendition;`

`annot.EntryAA = new `[`AnnotationAdditionalActionsElement`](../../../12-interactive/1423-annotationadditionalactionselement/index.md)`(annot);`  
`annot.EntryAA.EntryPV = pageVisibleAction;`  
[`AnnotationElement`](../../../12-interactive/1391-annotationelement/index.md)` = annot;`
