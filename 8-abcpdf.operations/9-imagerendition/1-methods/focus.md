# Focus Function

Focus the document on the location of the image placement.

## Syntax

```csharp
void Focus()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

Focus the document on the location of the image placement.

After calling this function you can add content overlaying the image rendition. For example you might call [Doc.FrameRect](../../../5-abcpdf/doc/1-methods/framerect.md) to frame it.

Because images are always drawn using a transformation matrix rather than a Rect you will probably need to reduce the size of any lines or text to values smaller than one.
