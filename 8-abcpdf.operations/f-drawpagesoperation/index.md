# DrawPagesOperation Class

Operation to draw pages from one document onto another.

This operation is in many ways similar to the Doc.AddImageDoc function. However the AddImageDoc function is not aware of state and thus it has to take each call afresh.

In contrast the DrawPagesOperation is aware of state which means that, for a process drawing many pages between two documents, it can operate much more quickly.

It also means it can factor out duplicate resources more effectively. So document level structures like optional content group - OCG - layers can be represented more efficiently rather than being repeated for each page added.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.DrawPagesOperation
```

```
Implements: IDisposable
```

## Methods

| Method | Description |
| --- | --- |
| [DrawPagesOperation](1-methods/01-drawpagesoperation.md) | DrawPagesOperation constructor. |
| [DrawPage](1-methods/02-drawpage.md) | Draw the current page from the source to the destination document. |

## Properties

| Property | Description |
| --- | --- |
| [Source](2-properties/01-source.md) | The source document from which to take pages. |
| [Destination](2-properties/02-destination.md) | The destination document onto which pages will be drawn. |
| [CopyAnnotations](2-properties/03-copyannotations.md) | Whether to copy fields and annotations. |
| [CopyTags](2-properties/04-copytags.md) | Whether to copy accessibility tags. |
| [UseSourceRect](2-properties/04-usesourcerect.md) | Whether to draw only the portion of the page specified by the Souce. |
| [Alpha](2-properties/05-alpha.md) | The level of alpha to apply to the drawn page. |
| [RootTag](2-properties/05-roottag.md) | The root structure element for the added tags. |
