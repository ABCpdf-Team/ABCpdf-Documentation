# Stamp Method

Stamp all fields into the document.

## Syntax

```csharp
void Stamp()
```

## Notes

Use this method to permanently stamp all fields into the document.

When this method is called all field appearances are stamped permanently into the document and the fields are deleted.

Each field becomes a new layer on the page (see Doc.LayerCount) so you may wish to call Doc.Flatten on any affected pages.

You can use the Field.Stamp method to stamp individual fields into the document.

