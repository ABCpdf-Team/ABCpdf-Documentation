# Entry_op Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "op" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "op" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 129.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=137)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.](https://www.iso.org/standard/63534.html)

The lowercase op flag controls overprinting for fill operations, operating independently of the OP flag which applies to stroke. This separation allows different overprint behaviour for fills and strokes within the same graphics state.

When OPM is set to 1, a fill overprint setting of true causes a color component with a value of zero to leave the corresponding ink on the output unchanged rather than knocking it out.
