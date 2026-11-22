# EntryTB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "TB" entry of the 3d comment note object. |

## Notes

Represents the "TB" entry of the 3d comment note object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an array which contains integers, representing PDF numeric objects.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39f, page 74.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=74)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 331, page 695.](https://www.iso.org/standard/63534.html)

The TB entry, when true, displays the note text inside a text bubble or callout box rather than as plain text.
