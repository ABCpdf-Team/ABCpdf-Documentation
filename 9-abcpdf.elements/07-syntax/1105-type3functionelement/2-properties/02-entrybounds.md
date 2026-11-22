# EntryBounds Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Bounds" entry of the type 3 function dictionary object. |

## Notes

Represents the "Bounds" entry of the type 3 function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 41, page 97.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=105)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 41, page 127.](https://www.iso.org/standard/63534.html)

The Bounds array lists the boundary values that divide the function's domain into subdomains. It contains one fewer value than there are sub-functions. Each boundary value marks the transition from one sub-function to the next.
