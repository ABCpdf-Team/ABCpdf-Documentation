# EntryID Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "ID" entry of the navigator dictionary object. |

## Notes

Represents the "ID" entry of the navigator dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6d, page 34.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=34)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 160, page 454.](https://www.iso.org/standard/63534.html)

The ID is a unique string identifying this navigator across documents, used to recognise the navigator when it is shared between portfolio files.
