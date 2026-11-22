# EntryImageType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "ImageType" entry of the version 1. |

## Notes

Represents the "ImageType" entry of the version 1.3 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 369, page 641.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=649)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 406, page 825.](https://www.iso.org/standard/63534.html)

The ImageType entry holds a two-element array giving the number of samples per pixel and the bit depth of the high-resolution image.
