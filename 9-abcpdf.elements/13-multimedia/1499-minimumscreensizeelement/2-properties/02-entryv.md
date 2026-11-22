# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "V" entry of the minimum screen size dictionary object. |

## Notes

Represents the "V" entry of the minimum screen size dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

Items in this array should have a minimum value of 0.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 270, page 491.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=499)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 281, page 615.](https://www.iso.org/standard/63534.html)

The V entry holds the minimum acceptable screen size as a two-element array of width and height in pixels. The criterion is satisfied if both the screen width and height meet or exceed the specified values.
