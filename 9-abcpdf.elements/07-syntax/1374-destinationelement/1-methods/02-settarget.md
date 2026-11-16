# SetTarget Function

Sets the page and type for the destination.

## Syntax

[C#]

```csharp
void SetTarget(<a href="../../1085-pageobjectelement/default.htm">PageObjectElement</a> page, DestinationType type)
```

## Params

| **Name** | **Description** |
| --- | --- |
| page | The destination page. |
| type | The type of destination. |

## Notes

Sets the page and type for the destination.

As part of this process other destination parameters are set to defaults.

The type determines how the destination page is displayed. It is stored in the [EntryType](2-properties/02-entrytype.md) entry.

The DestinationType enumeration may take the following values:

* None - Unknown or undefined.
* XYZ - Display the page with a particular point pinned to the top left of the window, at a specified zoom level.
* Fit - Display the page so that it fits into the window.
* FitH - Display the page so that it fits into the window, with a particular horizontal point pinned to the left of the page.
* FitV - Display the page so that it fits into the window, with a particular vertical point pinned to the top of the page.
* FitR - Display the page so that a specified rectangle fits into the window.
* FitB - Display the page so that the page bounding box fits into the window.
* FitBH - Display the page so that the page width fits into the window, with a particular horizontal point pinned to the left of the page.
* FitBV - Display the page so that the page height fits into the window, with a particular vertical point pinned to the top of the page.
