# EntryUserUnit Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "UserUnit" entry of the page object object. |

## Notes

Represents the "UserUnit" entry of the page object object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a double representing a PDF numeric object.

It should have a positive value.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 79.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=87)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 106.](https://www.iso.org/standard/63534.html)

The UserUnit entry specifies the size of one user space unit in points (1/72 inch). The default value of 1 means one user space unit equals one point. A larger value scales the entire page coordinate system, allowing pages larger than the default coordinate space can represent.
