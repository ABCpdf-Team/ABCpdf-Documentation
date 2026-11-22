# EntryAspect Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "Aspect" entry of the movie dictionary object. |

## Notes

Represents the "Aspect" entry of the movie dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

Items in this array should have a minimum value of 0.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 295, page 508.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=516)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 306, page 635.](https://www.iso.org/standard/63534.html)

The Aspect entry holds a two-element array giving the natural width and height of the movie frame in pixels. The viewer uses this to compute the correct aspect ratio for display.
