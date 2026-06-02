# IsWeakReference Property

## Notes

Gets or sets whether references to this font store are weak or strong.

Set this property to true after the store has been assigned to the appropriate Doc objects via Doc.FontStore. Doing so releases your ownership of the store, allowing its life span to be determined solely by the life span of the Doc objects that reference it.

If you set this property to true and no Doc currently holds a reference to this store, the store will be disposed of immediately.
