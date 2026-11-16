# Resample Function

Changes the number of bits per color component.

## Syntax

[C#]

```csharp
void Resample(int value)
```

## Params

| **Name** | **Description** |
| --- | --- |
| value | The number of bits per color component. |

## Notes

Change the number of bits per color component.

The bit depths you should use are 1, 2, 4, 8 or 16. Other values are not supported in the PDF Specification.

Changing this property for Indexed color images changes the precision of the index rather than of the color components. If you want to change the precision of the components you need to [Realize](realize.md) the PixMap first.

Operations like [Resize](resize.md) operate more naturally on eight and sixteen bit images - producing better results, faster, using less memory. So if you will be resizing and also moving to eight or sixteen bit depth it is typically better to Resample before calling Resize.

After this method is called the image may no longer be longer compressed. You may wish to compress it using the [StreamObject.Compress](streamobject/1-methods/compress.md) method.

## Example

None
