# MakeTag Function

Make a tag with a unique ID.

## Syntax

[C#]

```csharp
<a href="../../xtagging.tag/default.htm">Tag</a> MakeTag(string type)
```

## Params

| **Name** | **Description** |
| --- | --- |
| type | The type of structure element. For example P is a paragraph. |

## Notes

Make a tag with a unique ID.

Normally you can just call [Open](04-open.md) with the name of a tag. However sometimes you may have custom elements you want to add to the tag before it is committed to the document.

In this case you would want the following sequence.
