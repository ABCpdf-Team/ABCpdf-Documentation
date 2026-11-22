# Tag Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XTagging`](../../xtagging/index.md) | n/a | Yes | The document tagging control. |

## Notes

The document tagging control.

This property contains a class providing methods for tagging the document as content is added.

Tagging enables semantic form to be embedded in an otherwise unstructured document. It is useful for interoperability and it is required for compatibility with accessibility standards such as PDF/UA.

The new tagging feature lets you build structured documents with just three simple actions. Start a tag for any element such as a heading, paragraph, list, or table cell. Then insert your text or graphics inside that tag. Finally, close the tag. Repeat these steps to create as many elements as you need, nesting one tag inside another to form a complete document outline. When you save the PDF, ABCpdf automatically assembles all the pieces into a proper structure tree and manages advanced details like role maps and structure attributes without any extra effort from you.

You still have full control over the full range of tagging capabilities when your project requires them. You can supply custom role maps to convert your application specific element types into standard PDF roles. You can also attach structure attributes to any tag to carry additional semantic information. The process remains simple. Start a tag, add your content, end the tag, and save. ABCpdf handles everything else.

## Example

Also see example code in: [ABCpdf Tagged Text Example](../../../4-examples/02-texttagged.md), [XTagging Open Function](../../xtagging/1-methods/04-open.md), [XTagging Close Function](../../xtagging/1-methods/05-close.md), [XTagging AddFocus Function](../../xtagging/1-methods/08-addfocus.md), [XTextStyle AutoTag Property](../../xtextstyle/2-properties/autotag.md).
