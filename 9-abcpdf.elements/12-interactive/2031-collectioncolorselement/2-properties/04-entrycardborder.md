# EntryCardBorder Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "CardBorder" entry of the collection colors dictionary object. |

## Notes

Represents the "CardBorder" entry of the collection colors dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0 and a maximum of 1.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6a, page 31.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=31)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 157, page 449.](https://www.iso.org/standard/63534.html)

The CardBorder entry sets the border colour of file cards in a card-style portfolio view.
