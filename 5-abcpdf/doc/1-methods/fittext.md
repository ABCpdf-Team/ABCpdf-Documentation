# FitText Function

Fit a block of text into the current rectangle on the current page.

## Syntax

[C#]

```csharp
int FitText(string text)
```

## Params

| **Name** | **Description** |
| --- | --- |
| text | The text to be added to the page. |
| return | The Object ID of the newly added Text Object. |

## Notes

Fit a block of text into the current rectangle on the current page.

This function is similar to [AddText](addtext.md) but can be used in situations in which you have a set area into which you know your text should be fitted. The call will take the base text supplied and scale it appropriately until it fits as exactly as possible into the current [Rect](2-properties/rect.md). So it reduces (shrinks) or increases the font size so the text exactly fills the Rect.

For fitting multi-styled text you should use the [FitTextStyled](fittextstyled.md) method which is used for adding [styled text](3-concepts/b-htmlstyles.md).

## Example

Also see example code in: [Signature MaxSignatureLength Property](6-abcpdf.objects/signature/2-properties/maxsignaturelength.md).
