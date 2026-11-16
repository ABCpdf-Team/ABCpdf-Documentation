# UpdateActualText Function

The logical structure can contain a copy of text which is drawn on the page.

## Syntax

[C#]

```csharp
void UpdateActualText(bool erase, bool regenerate, string separator = "")
```

## Params

| **Name** | **Description** |
| --- | --- |
| erase | Whether existing actual text should be removed. |
| regenerate | Whether actual text should be regenerated where possible. |
| separator | The separator to use between different items of text. |

## Notes

The logical structure can contain a copy of text which is drawn on the page.

This is held in the logical structure because it is useful to get hold of and also because it may be subtly different.

For example the text "ll" might be represented using a single ligature in the page content,.

whereas the text in the logical structure might use a double 'l'.

One is optimized for display. The other is optimized for semantic accuracy.

In cases where text on the page is changed the actual text may no longer be correct.

In particular, if text is redacted, you do not want a copy of the text to be maintained.

This function updates the actual text in the structure.

## Example

Also see example code in:

* [ABCpdf Tagged Text Example](4-examples/02-texttagged.md)
* [XTagging AddFocus Function](5-abcpdf/xtagging/1-methods/08-addfocus.md)
* [Focus OpaqueTypes  Property](5-abcpdf/xtagging.focus/2-properties/opaquetypes.md).
