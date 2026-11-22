# EntryBlackPoint Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "BlackPoint" entry of the calgray colour space dictionary object. |

## Notes

Represents the "BlackPoint" entry of the calgray colour space dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 63, page 145.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=153)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 62, page 183.](https://www.iso.org/standard/63534.html)

The black point gives the XYZ values corresponding to a component value of zero. When absent, the black point defaults to (0, 0, 0), meaning a zero component produces no light output.

A non-zero black point is useful when the source or destination device cannot produce true black, allowing the color space to represent the darkest achievable shade rather than theoretical zero.
