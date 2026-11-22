# Border Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `ArrayAtom` | n/a | No | The border appearance |

## Notes

The border determines the visible appearance of the border around the annotation.

The border is an ArrayAtom containing three or four elements. The first three elements describe the horizontal corner radius, the vertical corner radius and the border width. If the corners are zero then the border has rectangular rather than rounded corners. If the border width is zero then there is no border.

The last optional element is a dash array to be used in drawing dashed borders. This conforms to the standard dash array format which indicates alternatingly the length of lines and gaps. So \[2 1\] would indicate two on, one off, two on, one off... Longer arrays can be used for more complex dash patterns.

If this property is null then a solid rectangular border of width one will be drawn. This is equivalent to the following code.

```csharp
annot.Border = (ArrayAtom)Atom.FromString("[0 0 1");
```

After changing this property you will need to call [UpdateAppearance](../1-methods/updateappearance.md) to realize the change.
