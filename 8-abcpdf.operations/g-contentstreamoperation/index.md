# ContentStreamOperation Class

Object to extract content stream arrays from one or more pages and related objects.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.ContentStreamOperation
```

## Methods

| Method | Description |
| --- | --- |
| [ContentStreamOperation](1-methods/01-contentstreamoperation.md) | Contents constructor. |
| [AddPages](1-methods/addpages.md) | Add and scan a set of layers from one particular page in the document. |
| [AddContentStream](1-methods/addcontentstream.md) | Add and scan one particular layer or content stream. |
| [GetPositionAndLength](1-methods/getpositionandlength.md) | Gets the position and length of an operator and the parameters that it takes. |
| [GetStreamAndOffset](1-methods/getstreamandoffset.md) | Finds the location of an operator in a set of streams. |
| [Seen](1-methods/seen.md) | Determines if the object provided has previously been processed by this operation. |

## Properties

| Property | Description |
| --- | --- |
| [IncludeOffsets](2-properties/includeoffsets.md) | Whether or not to store information about the offsets of each of the Atoms in the stream. |
| [ArrayAtoms](2-properties/arrayatoms.md) | The content streams for the items that have been found. |
| [AnnotationAPs](2-properties/annotationaps.md) | Gets the set of content streams associated with Annotations. |
| [ArrayAtoms](2-properties/arrayatoms.md) | The content streams for the items that have been found. |
| [ExternalizeImages](2-properties/externalizeimages.md) | Whether to externalize inline images before processing content streams. |
| [IncludeAnnotations](2-properties/includeannotations.md) | Whether to include annotation and field appearances in the output. |
| [IncludeFormXObjects](2-properties/includeformxobjects.md) | Whether to include Form XObjects in the output. |
| [IncludePatterns](2-properties/includepatterns.md) | Whether to include Patterns in the output. |
| [Log](2-properties/log.md) | A log of any errors or inconsistencies found during processing. |
| [Preflight](2-properties/preflight.md) | Whether to preflight the document to ensure that any dynamic content has been frozen in place. |
| [UpdateAnnotationAppearances](2-properties/updateannotationappearances.md) | Whether to attempt to update annotation appearance streams if they are missing. |
