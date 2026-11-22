# EntryIncludedImageDimensions Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "IncludedImageDimensions" entry of the version 2. |

## Notes

Represents the "IncludedImageDimensions" entry of the version 2.0 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 642.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=650)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 827.](https://www.iso.org/standard/63534.html)

The IncludedImageDimensions entry holds a two-element array giving the pixel dimensions of the low-resolution proxy. The OPI processor uses this to compute the scale factor when substituting the original.
