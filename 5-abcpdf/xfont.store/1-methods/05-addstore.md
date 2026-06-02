# AddStore Function

Adds all fonts from another font store into this font store.

## Syntax

[C#]

```csharp
int AddStore(<a href="../default.htm">Store</a> store)
```

## Params

| **Name** | **Description** |
| --- | --- |
| store | The source font store containing the fonts to add. |
| return | The number of fonts successfully added. |

## Notes

Adds all fonts from another font store into this font store.

The source font store makes contact with this font store.

For more information on how private font stores interact when they make contact, see the remarks in the [class overview](default.md).
