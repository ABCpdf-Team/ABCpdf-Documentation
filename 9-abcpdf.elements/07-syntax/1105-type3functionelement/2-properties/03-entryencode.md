# EntryEncode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Encode" entry of the type 3 function dictionary object. |

## Notes

Represents the "Encode" entry of the type 3 function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 41, page 97.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=105)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 41, page 127.](https://www.iso.org/standard/63534.html)

The Encode array maps each sub-function's portion of the stitching domain to the input domain of that sub-function. Each pair of values gives the encoded input at the subdomain minimum and maximum. This allows sub-functions defined over \[0, 1\] to be used without modification.
