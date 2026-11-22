# EntryA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "A" entry of the icon fit dictionary object. |

## Notes

Represents the "A" entry of the icon fit dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 247, page 463.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=471)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 250, page 561.](https://www.iso.org/standard/63534.html)

The alignment fractions determine where the icon is placed within the available rectangle after scaling. Values run from 0.0 to 1.0; 0.5, 0.5 centres the icon.
