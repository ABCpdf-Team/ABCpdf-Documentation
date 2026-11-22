# Store Class

Represents a private font store.

Fonts are normally loaded from the system into a global font store, which is relatively static.

You can add fonts using [Doc.AddFont](../doc/1-methods/addfont.md) or [Doc.EmbedFont](../doc/1-methods/embedfont.md), and unload them with [XFont.Unload](../xfont/1-methods/unload.md). However because the global store is shared across threads, modifying it can cause issues if other threads are using the fonts.

A private font store provides a more flexible alternative. It isolates fonts so that only specific [Doc](../doc/index.md) objects can access them. You can load all required fonts into a private store, assign that store to any [Doc](../doc/index.md) that needs those fonts, and later unload the fonts or delete the original font files once all dependent objects are done using them.

For automatic deletion of font files, see the autoDeleteFile parameter in [AddFont](1-methods/03-addfont.md) and [AddFonts](1-methods/04-addfonts.md).

When two private font stores interact, their fonts are merged into a shared reference group.

The private font store ensures that all fonts it contains are unloaded before their files are deleted.

If multiple private stores come into contact, all private fonts (and any shared references to them) become shared across all involved stores. Fonts are only unloaded and files automatically deleted after every involved store has been disposed.

However, contact between stores does not mean they all end up with the same font set. Shared references are managed separately from the actual fonts each store contains. When you add a font to a store that already has a shared reference to the same font, the existing shared reference is reused.

Private font stores come into contact in the following cases:

- When multiple font stores are assigned sequentially to the same [Doc.FontStore](../doc/2-properties/fontstore.md).
- When a new store is created using the copy constructor [Store(Store)](1-methods/01-store.md), it contacts the original store.
- When calling [AddFont(XFont)](1-methods/03-addfont.md) with a font that is private, the store that holds the font contacts the current store.
- When calling [AddStore(Store)](1-methods/05-addstore.md), the passed-in store contacts the current store.

There are [XFont.FindFamily](../xfont/1-methods/findfamily.md), [XFont.FindFamilyNames](../xfont/1-methods/findfamilynames.md), [XFont.FindByName](../xfont/1-methods/findbyname.md) and [XFont.FindByStyle](../xfont/1-methods/findbystyle.md) function overloads which allow you to search a font store for certain types of fonts.

```
System.Object
   WebSupergoo.ABCpdf14.XFont.Store
```

```
Implements: IDisposable
```

## Methods

| Method | Description |
| --- | --- |
| [Store](1-methods/01-store.md) | Creates a new XFont.Store. |
| [Dispose](1-methods/02-dispose.md) | Releases the reference to the font store. |
| [AddFont](1-methods/03-addfont.md) | Adds a font from a file to this font store. |
| [AddFonts](1-methods/04-addfonts.md) | Adds fonts from a file to this font store. |
| [AddStore](1-methods/05-addstore.md) | Adds all fonts from another font store into this font store. |
| [FindAll](1-methods/06-findall.md) | Returns all fonts held in this font store. |

## Properties

| Property | Description |
| --- | --- |
| [IsWeakReference](2-properties/isweakreference.md) | Gets or sets whether references to this font store are weak or strong. |
