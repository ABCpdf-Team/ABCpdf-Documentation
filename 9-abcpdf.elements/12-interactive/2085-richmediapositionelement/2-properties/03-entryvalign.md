# EntryVAlign Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "VAlign" entry of the richmediaposition dictionary object. |

## Notes

Represents the "VAlign" entry of the richmediaposition dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Near" if no value has been provided.

This item may take one of the following valid values:.

- Near
- Center
- Far

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.50f, page 85.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=85)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 340, page 703.](https://www.iso.org/standard/63534.html)

The vertical alignment name positions the window relative to the viewport: Near (top), Center, or Far (bottom).
