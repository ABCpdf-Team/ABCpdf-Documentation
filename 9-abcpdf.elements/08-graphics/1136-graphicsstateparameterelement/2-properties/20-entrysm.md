# EntrySM Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "SM" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "SM" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=137)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.](https://www.iso.org/standard/63534.html)

The smoothness tolerance controls the rendering quality of smooth shading operators. It sets the maximum allowable colour error in device colour space when approximating a smooth shade with flat-colour regions.

Lower smoothness values produce more accurate gradients at the cost of more output primitives. A value of 0 requests the device's maximum quality. The value is in the range 0 to 1.
