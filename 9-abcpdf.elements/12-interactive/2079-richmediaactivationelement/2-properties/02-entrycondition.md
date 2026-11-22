# EntryCondition Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Condition" entry of the richmediaactivation dictionary object. |

## Notes

Represents the "Condition" entry of the richmediaactivation dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "XA" if no value has been provided.

This item may take one of the following valid values:.

- XA
- PO
- PV

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.50a, page 79.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=79)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 335, page 698.](https://www.iso.org/standard/63534.html)

The condition name selects the trigger: XD (explicit user activation), PO (page open), PV (page visible). XD is the default and requires the user to click the annotation to start media.
