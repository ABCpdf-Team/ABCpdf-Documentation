# MakeTag Function

Make a tag with a unique ID.

## Syntax

*C#*

[`Tag`](../../xtagging.tag/index.md)` MakeTag(string type)`

## Params

| Name | Description |
| :---: | --- |
| type | The type of structure element. For example P is a paragraph. |

## Notes

Make a tag with a unique ID.

Normally you can just call [Open](04-open.md) with the name of a tag. However sometimes you may have custom elements you want to add to the tag before it is committed to the document.

In this case you would want the following sequence.

1. Call MakeTag
2. Add any [Attributes](../../xtagging.tag/2-properties/03-attributes.md) or [Objects](../../xtagging.tag/2-properties/04-object.md) to the tag
3. Call [Open](04-open.md) with the finished tag
4. Add your content
5. Call [Close](05-close.md) with the tag name
