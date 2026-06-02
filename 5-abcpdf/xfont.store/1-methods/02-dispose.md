# Dispose Function

Releases the reference to the font store.

## Syntax

[C#]

```csharp
void Dispose()
```

## Params

| **Name** | **Description** |
| --- | --- |
| none |  |

## Notes

Releases the reference to the font store.

This method does not immediately unload fonts. Instead, it releases the store's reference to the fonts in its collection.

Fonts are only unloaded (and auto-deleted if applicable) when all references from all contacting font stores have been released.

If other font stores that have made contact with this store still hold references, the fonts remain loaded and available to those stores.
