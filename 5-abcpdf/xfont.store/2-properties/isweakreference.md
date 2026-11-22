# IsWeakReference Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Gets or sets whether references to this font store are weak or strong. |

## Notes

Gets or sets whether references to this font store are weak or strong.

Set this property to true after the store has been assigned to the appropriate [Doc](../../doc/index.md) objects via [Doc.FontStore](../../doc/2-properties/fontstore.md). Doing so releases your ownership of the store, allowing its life span to be determined solely by the life span of the Doc objects that reference it.

If you set this property to true and no [Doc](../../doc/index.md) currently holds a reference to this store, the store will be disposed of immediately.
