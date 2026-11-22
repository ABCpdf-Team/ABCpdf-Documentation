# Entry_ca Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "ca" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "ca" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 130.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=138)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 164.](https://www.iso.org/standard/63534.html)

The lowercase ca entry sets the constant alpha for non-stroking (fill) operations, working independently of CA which applies to stroke. This separation allows different alpha values for fill and stroke within the same graphics state.

Like CA, values range from 0.0 (fully transparent) to 1.0 (fully opaque). The fill alpha interacts with the blend mode and soft mask to produce the final composited result.
