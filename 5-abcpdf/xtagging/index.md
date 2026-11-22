# XTagging Class

A class that allows control over PDF tagging for document accessibility.

```
System.Object
   WebSupergoo.ABCpdf14.XTagging
```

## Methods

| Method | Description |
| --- | --- |
| [MakeTag](1-methods/01-maketag.md) | Make a tag with a unique ID. |
| [OpenClose](1-methods/02-openclose.md) | Opens the tag then closes it. |
| [CloseOpen](1-methods/03-closeopen.md) | Closes the current tag then opens a new one. |
| [Open](1-methods/04-open.md) | Opens a sequence of tags. |
| [Close](1-methods/05-close.md) | Closes a sequence of tags. |
| [GetStructure](1-methods/06-getstructure.md) | Gets the current Structure for the document. |
| [Commit](1-methods/07-commit.md) | Commit any changes that may be required as a result of moving between two pages. |
| [WriteRaw](1-methods/07-writeraw.md) | Writes a raw tag to the content stream. |
| [AddFocus](1-methods/08-addfocus.md) | Assign a tag to a particular area of the current page. |

## Properties

| Property | Description |
| --- | --- |
| [AutoCommit](2-properties/autocommit.md) | Whether to automatically commit changes to the tag structure. |
| [Roles](2-properties/roles.md) | Any roles which should be applied to the document Role Map. |
| [Classes](2-properties/classes.md) | Any classes which should be applied to the document Class Map. |
| [MakePdfUAConformant](2-properties/makepdfuaconformant.md) | Whether to make the document PDF/UA conformant. |
| [Focii](2-properties/focii.md) | The focii to use for area based tagging. |
