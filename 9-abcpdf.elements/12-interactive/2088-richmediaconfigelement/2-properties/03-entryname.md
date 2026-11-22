# EntryName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Name" entry of the richmediaconfiguration dictionary object. |

## Notes

Represents the "Name" entry of the richmediaconfiguration dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

The specification defines this property as being of undefined type. So the type of atom or data contained is not part of the specification. For practical purposes this means it may be of any type.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51a, page 88.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=88)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 342, page 706.](https://www.iso.org/standard/63534.html)

The name string labels this configuration, allowing it to be selected by name in activation dictionaries.
