# EntryCondition Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Condition" entry of the richmediadeactivation dictionary object. |

## Notes

Represents the "Condition" entry of the richmediadeactivation dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "XD" if no value has been provided.

This item may take one of the following valid values:.

- XD
- PC
- PI

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.50b, page 80.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=80)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 336, page 699.](https://www.iso.org/standard/63534.html)

The condition name selects the deactivation trigger: XD (explicit user action), PC (page close), PI (page invisible). XD is the default and keeps the media playing until the user explicitly closes it.
